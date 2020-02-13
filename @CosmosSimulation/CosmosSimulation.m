%% Create a simulation environment for satellite formation flight.
%_____________________________________________________________________
%
% Class CosmosSimulation:
%
% Detailed explanation goes here.
%_____________________________________________________________________

classdef CosmosSimulation < handle
	
	properties (GetAccess = public, SetAccess = private)
		
		AccelFactor % Acceleration factor for the simulation.
		FlightControlModules % Array of FlightControl objects.
		GPSModules % Array of GPS objects.
		IDX % Change this ????????????????????????????????????????????????
		MaxNumOrbits % Maximum number of orbits to run.
		NumOrbitSections % Total number of orbit sections.
		NumSatellites % Total number of satellites in the formation.
		Orbits % Array of Orbit objects.
		OrbitSectionSize % Size of each orbit section [deg].
		OrbitSections % Orbital sections for the simulation.
		Satellites % Array of Satellite objects.
		%Status % Simulation status.
		TimeLength % Current length of the time vector for each satellite.
		TimePlot % Time vector for plotting.
		
	end
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% Constructor Method %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods % Constructor.
		
		function this = CosmosSimulation(param)
%% Constructor for class CosmosSimulation.
%_____________________________________________________________________
%
% Input:
% - Struct of parameters.
%
% Output:
% - Object of class Simulation.
%_____________________________________________________________________
			
			this.MaxNumOrbits = param.MaxNumOrbits;
			this.AccelFactor = param.AccelFactor;
			this.IDX = param.InitIDX;
			this.OrbitSectionSize = param.OrbitSectionSize;
			this.OrbitSections = 1:param.OrbitSectionSize:360;
			this.NumOrbitSections = length(this.OrbitSections);
			
			this.NumSatellites = param.NumSatellites;
			
			this.TimePlot = zeros(this.NumSatellites,1);
			this.TimeLength = ones(this.NumSatellites,1);
			
			% Create array with objects of class Satellite.
			this.Satellites = Satellite.empty(this.NumSatellites,0);
			for i = 1 : this.NumSatellites
				this.Satellites(i) = Satellite( ...
					param.Altitude, ...
					param.DeltaAngle, ...
					param.AutoResponse, ...
					param.AvailableGPS, ...
					param.AvailableTLE, ...
					param.NumSatellites, ...
					param.FormationMode);
			end
			
			% Create aliases for satellite orbits.
			this.Orbits = Orbit.empty(this.NumSatellites,0);
			for i = 1 : this.NumSatellites
				this.Orbits(i) = this.Satellites(i).Orbit;
			end
			
			% Create aliases for satellite flight control modules.
			this.FlightControlModules = ...
				FlightControl.empty(this.NumSatellites,0);
			for i = 1 : this.NumSatellites
				this.FlightControlModules(i) = ...
					this.Satellites(i).FlightControl;
			end
			
			% Create aliases for GPS modules.
			this.GPSModules = GPS.empty(this.NumSatellites,0);
			for i = 1 : this.NumSatellites
				this.GPSModules(i) = this.Satellites(i).GPSModule;
			end
			
		end
		
	end % Constructor.
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Public Methods %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods (Access = public)
		
		function updTimeVector(this, satID, timestep)
			% Increment length of the time vector for the current satellite.
			% At the end of the simulation, the values in TimeLength
			% should be equal for all satellites. Later, use this value to
			% prealocate memory for the TimePlot vector in order to reduce
			% computational time.
			lastPos = this.TimeLength(satID);
			nextPos = this.TimeLength(satID) + 1;
			
			this.TimePlot(satID, nextPos) = ...
				this.TimePlot(satID, lastPos) + timestep;
			
			this.TimeLength(satID) = this.TimeLength(satID) + 1;
		end
		
		updateIDX(this, meanAnomalyFromAN)
		start(this)
		incrementIDX(this)
		
	end % Public methods.
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Static Methods %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods (Static)
		
		createListCustomClasses(filepath, workspaceFileName)
		
	end % Static methods.
	
end % Class CosmosSimulation.
