%% Create a simulation environment for satellite formation flight.
%_____________________________________________________________________
%
% Class Simulation:
%
% Detailed explanation goes here.
%_____________________________________________________________________

classdef Simulation < handle
	
	properties (GetAccess = public, SetAccess = private)
		
		AccelFactor % Acceleration factor for the simulation.
		FlightControlModules % Array of FlightControl objects.
		MaxNumOrbits % Maximum number of orbits to run.
		NumSatellites % Total number of satellites in the formation.
		Orbits % Array of Orbit objects.
		OrbitSectionSize % Size of each orbit section [deg].
		OrbitSections % Orbital sections for the simulation.
		Satellites % Array of Satellite objects.
		Status % Simulation status.
		
	end
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% Constructor Method %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods % Constructor.
		
		function this = Simulation(param)
%% Constructor for class Simulation.
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
			this.OrbitSectionSize = param.OrbitSectionSize;
			this.OrbitSections = 1:param.OrbitSectionSize:360;
			
			this.NumSatellites = param.NumSatellites;
			
			% Create array with objects of class Satellite.
			this.Satellites = Satellite.empty(this.NumSatellites,0);
			for i = 1 : this.NumSatellites
				this.Satellites(i) = Satellite( ...
					param.Altitude, ...
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
			
		end
		
	end % Constructor.
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Public Methods %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods (Access = public)
		
		start(this)
		[status, msg] = getStatus(this, current_orbit)
		
	end % Public methods.
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Static Methods %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods (Static)
		
		createListCustomClasses(filepath, workspaceFileName)
		
	end % Static methods.
	
end % Class Simulation.
