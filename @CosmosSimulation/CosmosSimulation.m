%% Create simulation environment for satellite formation flight
% ______________________________________________________________________________
%
% Class CosmosSimulation:
%
% Detailed explanation goes here.
% ______________________________________________________________________________

classdef CosmosSimulation < handle

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Properties %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  properties (GetAccess = public, SetAccess = public)

    AccelFactor % Acceleration factor for the simulation.
%!RW: Delete AllParams; not used anymore; test first
    %AllParams % Struct with all parameters set by the user.
    CommModules % Array of Communication objects.
    FlightControlModules % Array of FlightControl objects.
    GPSModules % Array of Navigation objects.
%!RW: deleted param idx: replaced it by OrbitSectionNow
    %IDX
%!RW: change name? initial conditions for what?
    InitConditions % 
    MaxNumOrbits % Maximum number of orbits to run.
    ModeName % Formation flight mode name.
    NumOrbitSections % Total number of orbit sections.
    NumSatellites % Total number of satellites in the formation.
    Orbits % Array of Orbit objects.
    OrbitSections % Array of orbit sections with defined angle step [deg].
    OrbitSectionInitial % Initial orbit section ID for the simulation.
    OrbitSectionNow % Current orbit section ID.
    OrbitSectionSize % Size of each orbit section [deg].
    Satellites % Array of Satellite objects.
    SatPositions % Satellite positions in relation to the reference.
    SatPositionsLengths % Length of the satellite positions vectors.
%!RW: leave parameter status for later implementation.
    %Status % Simulation status.
    TelemetryPath %
    WindFactor %% switch on whether aerodynamics shall be simulated
    SolarFactor  %% switch on whether solar radiation pressure shall be simulated

  end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Constructor Method %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  methods % Constructor.
    
    function this = CosmosSimulation(maxNumOrbits, accelFactor, selectedModeID,...
      modeName, numSatellites, satMass, panelArea, panelQuantity,...
      attitudeResolutionDeg, initOrbitAltitude, sizeOrbitSection, initOrbitSection,...
      rMatrixDiagonal, autoResponse, availableGPS, availableTLE, initConditions,...
      ffpsFolderName, ffpsValues)
      %% Constructor for class CosmosSimulation
      %
      % Input:
      % - Simulation parameters.
      %
      % Output:
      % - Object of class Simulation.
      
%!RW: attitudeResolutionDeg -> former deltaAngle
      
      % Set simulation parameters.
      this.AccelFactor = accelFactor;
      this.MaxNumOrbits = maxNumOrbits;
      this.ModeName = modeName;
      this.NumSatellites = numSatellites;
      
%!RW: Parameters still in simulation, later transfer to FlightControl.
      this.InitConditions = initConditions;
      this.OrbitSections = sizeOrbitSection:sizeOrbitSection:360;
      this.OrbitSectionInitial = initOrbitSection;
      this.OrbitSectionNow = initOrbitSection;
      this.OrbitSectionSize = sizeOrbitSection;
      this.NumOrbitSections = length(this.OrbitSections);
      
      % Create array for objects of class Satellite.
      this.Satellites = Satellite.empty(numSatellites,0);
      
      % Create arrays for aliases of Satellite children objects.
      % Aliases allow calling children objects with shorter commands.
      this.Orbits = Orbit.empty(numSatellites,0);
      this.FlightControlModules = FlightControl.empty(numSatellites,0);
      this.GPSModules = Navigation.empty(numSatellites,0);
      this.CommModules = Communication.empty(numSatellites,0);
      
      % Set location in which to save files with FFPS for the satellites.
      ffpsFolderPath = strcat('storage',filesep,ffpsFolderName);
      [~, ~, ~] = mkdir(ffpsFolderPath); % [status, msg, msgID]
      ffpsFilePrefix = 'fc_FFP_sat';
      ffpsPathPrefix = strcat(ffpsFolderPath,filesep,ffpsFilePrefix);
      
      % Set location for telemetry files.
      tmFolderPath = 'telemetry';
      [~, ~, ~] = mkdir(tmFolderPath); % [status, msg, msgID]
      this.TelemetryPath = tmFolderPath;
      
      for i = 1 : numSatellites
        % Create a JSON file for each satellite's formation flight parameters.
        ffpsFullPath = strcat(ffpsPathPrefix,num2str(i),'.json');
        fid = fopen(ffpsFullPath,'w');
        fprintf(fid,'%s',jsonencode( ffpsValues(i) ) );
        fclose(fid);
        
        % Bring each satellite to life.
        % Inform the location of the FFPS file to each satellite.
        this.Satellites(i) = Satellite( ...
          satMass, ...
          panelArea, ...
          panelQuantity, ...
          initOrbitAltitude, ...
          attitudeResolutionDeg, ...
          rMatrixDiagonal, ...
          autoResponse, ...
          availableGPS, ...
          availableTLE, ...
          numSatellites, ...
          selectedModeID, ...
          ffpsFullPath, ...
          tmFolderPath);
        
        % Create simulation aliases for satellite children objects.
        this.Orbits(i) = this.Satellites(i).Orbit;
        this.FlightControlModules(i) = this.Satellites(i).FlightControl;
        this.GPSModules(i) = this.Satellites(i).GPSModule;
        this.CommModules(i) = this.Satellites(i).CommModule;
      end
      
      this.WindFactor = 1;      %% shall aerodynamics be simulated?
      this.SolarFactor = 1;     %% shall solar radiation pressure be simulated?
      
    end % Constructor function.
    
  end % Constructor section.
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Public Methods %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  methods (Access = public)
    
    updateIDX(this, meanAnomalyFromAN)
    
    startSimulation(this)
    % Public method called in:
    %   ?
    % Class properties used:
    %   ?

    incrementIDX(this)
    
%!RW: later rename function to setOrbitSection?
    function setIDX(this, value)
%     this.IDX = value;
      this.OrbitSectionNow = value;
    end
    
    plotting(this, ns, meanMotionRad)
    
    ECEFprocessing(this, altitude, inclination, RAAN, vizScale, ...
      keplerStepSize, v0, plotLatLonIn2D, writeLLRRPYData, parentCoordFolder,...
      llrNotScaledFolderName, llrScaledFolderName, xyzScaledFolderName, enablePlot)
    
    GNSSRprocessing(this, ns, radiusOfEarth, rpyParentFolderName,...
      rpyNotScaledFolderName)
    
    [time,x,y,z] = getPosECEF(this,cosmosTime,keplerStepSize,incDeg,RAAN,v0,altitude,radiusOfEarth,...
      xlocal,ylocal,zlocal,scale,ns)
    
  end % Public methods.
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Static Methods %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  methods (Static)

    [time,lat,lon,rad]=  keplerPropagation(cosmosTime,keplerStepSize,inclination,RAAN,v0,altitude,radiusOfEarth)

    createListCustomClasses(filepath, workspaceFileName)

  end % Static methods.

end % Class CosmosSimulation.
