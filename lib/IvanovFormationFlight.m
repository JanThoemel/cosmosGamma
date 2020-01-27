%% Control the satellite formation flight.
%_____________________________________________________________________
%
% Class IvanovFormationFlight:
%
% Priority:
% - this line 95: Are SMA and inclination equations right?
%
% To do @ IvanovFormationFlightInitial.m:
% - line 44: check sstDesiredFunction and put
%   IvanovFormationFlightDesired.m as function of this class
% - log.info('Original atmospheric density (rho = %1.3e) is
%   overwritten by Ivanov\'s value (rho = 1.3e)',rho,1e-11)
%
% Recently done:
% - orbitalproperties.m line 89: checked meaning of
%   sma (semi-major axis)
% - IvanovFormationFlightInitial.m line 65: checked usage of r0: it
%   used in orbitalproperties.m for calculating V
%_____________________________________________________________________

classdef IvanovFormationFlight < handle
	
	properties (Access = public)
		
		AvailableGPS % GPS availability [true/false].
		AvailableTLE % TLE availability [true/false].
		FormationMode % Mode for the satellites formation flight.
		Orbit % Object of class Orbit.
		Satellites % Object array of class IvanovSatellite.
		TotalSatellites % Total number of satellites in the formation.
		
		
		
		
		TotalTime = 50*90*60      % Simulation period [s], i.e approximate
		%multiples of orbit periods (not relevant for cosmosFS)
		CompStep = 9              % Computational step size [s]
		LengthControlLoop = 90    % [s]
		TimeTemp                  % Duration and interpolation timestep 
		%for each control loop
		WakeAerodynamics = 0      % Use of wake aerodynamics
		MasterSatellite = 0       % If 0, no master; if 1, active master; 
		%if 2, passive master
		
		%
		WindOn = 1                %
		SunOn = 0                 %
		DeltaAngle = 30           % Roll, pitch, yaw angles resolution
		SatelliteMass = 1         %
		Altitude = 340e3          % [m]
		ArgumentOfPerigeeAtTe0    % Not used yet
		TrueAnomalyAtTe0          % Not used yet
		EjectionVelocity = 0.5    % [m/s]
		TimeBetweenEjections = 10 % [s]
		PanelSurface = 0.01       % [m^2]
		
		SSCoeff = 1               %
		Panels = [0 0 2]          %
		SSTTemp                   %
		
		MeanAnomalyOffSet = pi/4  % For pi/2, satellite crosses on the 
		%poles; for 0, satellite crosses at equator
		NumberOfModes = 10        %
		SSParameters              %
		
	end
	
	properties (Access = private)
		
		PrivatePropertyTest
		
	end
	
	methods
		
		function this = IvanovFormationFlight(orbit,ns,gps,tle)
%% Constructor for class IvanovFormationFlight.
%_____________________________________________________________________
%
% Receive:
% - Object of class Orbit.
% - Number of satellites to set.
% - GPS and TLE availability.
%
% Set:
% - Object array of class IvanovSatellite.
% - Default formation mode.
%_____________________________________________________________________
			
			this.Orbit = orbit;
			this.TotalSatellites = ns;
			this.AvailableGPS = gps;
			this.AvailableTLE = tle;
			
			% Allocate object array to property Satellites.
			this.Satellites = IvanovSatellite.empty(ns,0);
			
			% Populate array with objects of class IvanovSatellite.
			for i = 1 : ns
				this.Satellites(i) = IvanovSatellite(orbit,gps,tle);
			end
			
			% Set default formation mode.
			this.FormationMode = 1;
			
			
			
			
			
			
			this.TimeTemp = 0 : this.CompStep : this.LengthControlLoop;
			this.SSTTemp = zeros(9, ns, size(this.TimeTemp,2));
			for i = 1 : ns
				this.SSTTemp(1,i,1) = (i-1) * this.EjectionVelocity * ...
					this.TimeBetweenEjections; % x position
				this.SSTTemp(4,i,1) = 0; % u velocity
				this.SSTTemp(7,i,1) = 0; % alpha
				this.SSTTemp(8,i,1) = 0; % beta
				this.SSTTemp(9,i,1) = 0; % gamma
			end
			this.SSParameters = zeros(6, ns, this.NumberOfModes);
			
		end
		
		function mode = getFormationFlightMode(this)
%% Get formation flight mode.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________
			
			mode = this.FormationMode;
			
		end
		
		function this = setFormationFlightMode(this, newMode)
%% Set formation flight mode.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________
			
			if ~isnumeric(newMode)
				error('Formation flight mode must be numeric.');
			end
			this.FormationMode = newMode;
			
		end
		
		
% 		function [sstDesired] = IvanovFormationFlightDesired()
% 			
% 		end
	

		

%_____________________________________________________________________
	end
	
end
