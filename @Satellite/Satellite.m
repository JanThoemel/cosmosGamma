%% Instantiate satellite objects
% ______________________________________________________________________________
%
% Class Satellite:
%
% Detailed explanation goes here.
% ______________________________________________________________________________

classdef Satellite < handle

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Properties %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  properties (GetAccess = public, SetAccess = public)

    controlVector
    controlVectorTM
    forceVector
    forceVectorTM

    Alive % If satellite is alive or not [true/false].
    CommModule % Object of class Communication.
    FlightControl % Object of class FlightControl.
    GPSModule % Object of class Navigation.
    Name % Unique name for identification of the satellite.
    Orbit % Object of class Orbit.

    TimeVectorTM % Time vector for plotting.
    TimeVectorTMLengths % Length of the time vector for each satellite.   
    SatPositionsTM % Satellite positions in relation to the reference.
    SatPositionsTMLengths % Length of the satellite positions vectors.
    SatStatesTM % Satellites states for plotting.
    SatStatesTMLengths % Length of the satellite states vectors.

  end

  properties (GetAccess = public, SetAccess = private)

    % N/A

  end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Constructor Method %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  methods % Constructor.

    function this = Satellite(altitude, deltaAngle, rMatrixDiagonal, autoResponse, ...
      gpsAvailability, tleAvailability, numSats, mode, ffpsPath, tmFolderPath)
      %% Constructor for class Satellite
      %
      % Input:
      % - Altitude [meters].
      % - Roll, pitch, yaw angles resolution [deg].
      % - Auto response activation [boolean].
      % - GPS availability [boolean].
      % - TLE availability [boolean].
      % - Total number of satellites in the formation.
      % - Mode for the satellites formation flight.
      %
      % Output:
      % - Object of class Satellite.

      this.FlightControl = FlightControl(numSats, mode, deltaAngle,...
        rMatrixDiagonal, ffpsPath, tmFolderPath);
      this.Orbit = Orbit(altitude, gpsAvailability, tleAvailability);
      this.GPSModule = Navigation();
      this.CommModule = Communication(autoResponse, numSats);

      this.controlVector=zeros(numSats,3);
      this.controlVectorTM=zeros(numSats,3);
      this.forceVector=zeros(numSats,3);
      this.forceVectorTM=zeros(numSats,3);

      this.TimeVectorTM = zeros(numSats,1);
      this.TimeVectorTMLengths = ones(numSats,1);      

      this.SatPositionsTM = zeros(numSats,3,1);
      this.SatPositionsTMLengths = ones(numSats,1);
      this.SatStatesTM = zeros(numSats,9,1);
      this.SatStatesTMLengths = ones(numSats,1);

    end

  end % Constructor.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Public Methods %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  methods (Access = public)

    initialize(this, id, commChannel, iniConditions)
    fly(this, currentOrbitSection, sizeOrbitSection, plannedExperimentTime)
    turnOff(this)

    function updControlVectorTM(this)
      this.controlVectorTM = cat(3,this.controlVectorTM,this.controlVector);
    end

    function updForceVectorTM(this)
      this.forceVectorTM = cat(3,this.forceVectorTM,this.forceVector);
    end

    function updSatPositionsTM(this, satID, newValue) %! give better name this is the reference position change
      nextPos = this.SatPositionsTMLengths(satID) + 1;
      this.SatPositionsTM(satID, 1:3, nextPos) = newValue;
      this.SatPositionsTMLengths(satID) = this.SatPositionsTMLengths(satID) + 1;
    end

    function updTimeVectorTM(this, satID, timestep, lastTime)
      % Increment length of the time vector for the current satellite.
      % At the end of the simulation, the values in TimeLength
      % should be equal for all satellites. Later, use this value to
      % prealocate memory for the TimePlot vector in order to reduce
      % computational time.
      % OK
%      lastPos = this.TimeVectorLengths(satID);
%      nextPos = this.TimeVectorLengths(satID) + 1;
%      this.TimeVector(satID, nextPos) = this.TimeVector(satID, lastPos) + timestep;
%      this.TimeVectorLengths(satID) = this.TimeVectorLengths(satID) + 1;

      nextPos = this.TimeVectorTMLengths(satID) + 1;
      this.TimeVectorTM(satID, nextPos) = lastTime + timestep;
      this.TimeVectorTMLengths(satID) = this.TimeVectorTMLengths(satID) + 1;
    end

    function updSatStatesTM(this, satID, satState)
      nextPos = this.SatStatesTMLengths(satID) + 1;
      this.SatStatesTM(satID, 1:9, nextPos) = satState;
      this.SatStatesTMLengths(satID) = this.SatStatesTMLengths(satID) + 1;
    end

    function updSatStatesIni(this, satID, satState)
      this.SatStatesTM(satID, 1:9, 1) = satState;
    end

    function deleteTelemetryFiles(this, satID)
      fileControlVectorTM = strcat('telemetry',filesep,'ControlVectorTM',num2str(satID),'.csv');
      fileForceVectorTM = strcat('telemetry',filesep,'ForceVectorTM',num2str(satID),'.csv');
      fileSatPositionTM = strcat('telemetry',filesep,'SatPositionTM',num2str(satID),'.csv');
      fileTimeVectorTM = strcat('telemetry',filesep,'TimeVectorTM',num2str(satID),'.csv');
      fileSatStatesTM = strcat('telemetry',filesep,'SatStatesTM',num2str(satID),'.csv');
      if isfile(fileControlVectorTM), delete(fileControlVectorTM); end
      if isfile(fileForceVectorTM), delete(fileForceVectorTM); end
      if isfile(fileSatPositionTM), delete(fileSatPositionTM); end
      if isfile(fileTimeVectorTM), delete(fileTimeVectorTM); end
      if isfile(fileSatStatesTM), delete(fileSatStatesTM); end
      this.CommModule.groundSend("Telemetry data has been cleared");
    end

    function writeAndResetMissionTM(this,satID)
      fileControlVectorTM = strcat('telemetry',filesep,'ControlVectorTM',num2str(satID),'.csv');
      fileForceVectorTM = strcat('telemetry',filesep,'ForceVectorTM',num2str(satID),'.csv');
      fileSatPositionTM = strcat('telemetry',filesep,'SatPositionTM',num2str(satID),'.csv');
      fileTimeVectorTM = strcat('telemetry',filesep,'TimeVectorTM',num2str(satID),'.csv');
      fileSatStatesTM = strcat('telemetry',filesep,'SatStatesTM',num2str(satID),'.csv');
      writematrix(squeeze(this.controlVectorTM(satID,1:3,:))',fileControlVectorTM,'WriteMode','append');
      writematrix(squeeze(this.forceVectorTM(satID,1:3,:))',fileForceVectorTM,'WriteMode','append');
      writematrix(squeeze(this.SatPositionsTM(satID,1:3,:))',fileSatPositionTM,'WriteMode','append');
      writematrix(squeeze(this.TimeVectorTM(satID,:))',fileTimeVectorTM,'WriteMode','append');
      writematrix(squeeze(this.SatStatesTM(satID,1:9,:))',fileSatStatesTM,'WriteMode','append');
      this.controlVectorTM=[];
      this.forceVectorTM=[];
      this.SatPositionsTM = [];
      this.SatPositionsTMLengths(satID) = 0;
      this.TimeVectorTM = [];
      this.TimeVectorTMLengths(satID) = 0;
      this.SatStatesTM=[];
      this.SatStatesTMLengths(satID) = 0;
    end

  end % Public methods.

end % Class Satellite.
