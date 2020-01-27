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
		Ns = 4                    %
		SatelliteMass = 1         %
		Altitude = 340e3          % [m]
		ArgumentOfPerigeeAtTe0    % Not used yet
		TrueAnomalyAtTe0          % Not used yet
		EjectionVelocity = 0.5    % [m/s]
		TimeBetweenEjections = 10 % [s]
		PanelSurface = 0.01       % [m^2]
		
		Rho = 1e-11               % Constant atmospheric density [kg/m^3]
		Tatmos = 900              % This should be interpolated later [K]
		V                         % [m/s]
		RadiusOfEarth = 6371e3    % [m]
		Mu = 3.986004418e14       % Earth's standard gravitational 
		%parameter [m^3/s^2]
		MeanMotion                % [rad/s]
		R0                        % [m]
		Inclination               % [deg]
		
		SSCoeff = 1               %
		Panels = [0 0 2]          %
		SSTTemp                   %
		
		MeanAnomalyOffSet = pi/4  % For pi/2, satellite crosses on the 
		%poles; for 0, satellite crosses at equator
		NumberOfModes = 10        %
		SSParameters              %
		
		J2 = 0.00108263           % To be checked, from matlabfunctions/
		%orbitalproperties.m
		SemiMajorAxis             % []
		
		Mode                      % From cosmosFS.m: function 
		%[goFoFli,batteryOK]=getMode(maxOrbits,orbitCounter,DQ)
		%Satellites                % Array of Satellite objects
		
	end
	
	properties (Access = private)
		
		PrivatePropertyTest
		
	end
	
	methods
		
		function this = IvanovFormationFlight(orbit,ns)
%% Constructor for class IvanovFormationFlight.
%_____________________________________________________________________
%
% Receive:
% - Object of class Orbit.
% - Number of satellites to set.
%
% Set:
% - Object array of class IvanovSatellite.
% - Default formation mode.
%_____________________________________________________________________
			
			this.Orbit = orbit;
			this.TotalSatellites = ns;
			
			% Allocate object array to property Satellites.
			this.Satellites = IvanovSatellite.empty(ns,0);
			
			% Populate array with objects of class IvanovSatellite.
			for i = 1 : ns
				this.Satellites(i) = IvanovSatellite();
			end
			
			% Set default formation mode.
			this.FormationMode = 1;
			
			
			
			
			
			
			this.TimeTemp = 0 : this.CompStep : this.LengthControlLoop;
			this.SSTTemp = zeros(9, this.Ns, size(this.TimeTemp,2));
			for i = 1 : this.Ns
				this.SSTTemp(1,i,1) = (i-1) * this.EjectionVelocity * ...
					this.TimeBetweenEjections; % x position
				this.SSTTemp(4,i,1) = 0; % u velocity
				this.SSTTemp(7,i,1) = 0; % alpha
				this.SSTTemp(8,i,1) = 0; % beta
				this.SSTTemp(9,i,1) = 0; % gamma
			end
			this.SSParameters = zeros(6, this.Ns, this.NumberOfModes);
			this.R0 = this.RadiusOfEarth + this.Altitude;
			this.V = sqrt( this.Mu / this.R0 );
			this.MeanMotion = sqrt( this.Mu / this.R0^3 );
			this.SemiMajorAxis = ( 1 / this.MeanMotion^2 * this.Mu )^(1/3);
			this.Inclination = acosd(-(this.SemiMajorAxis/12352000)^(7/2));
			
		end
		
		function mode = getFormationMode(this)
%% Get formation flight mode.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________
			
			mode = this.FormationMode;
			
		end
		
		function this = setFormationMode(this, new_mode)
%% Set formation flight mode.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________
			
			if ~isnumeric(new_mode)
				error('Formation flight mode must be numeric.');
			end
			this.FormationMode = new_mode;
			
		end
		
		
% 		function [sstDesired] = IvanovFormationFlightDesired()
% 			
% 		end
	

		

%_____________________________________________________________________
	end
	
end
