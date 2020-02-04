%% Control the satellite formation flight.
%_____________________________________________________________________
%
% Class IvanovFormationFlight:
%
% Detailed explanation goes here.
%_____________________________________________________________________

classdef IvanovFormationFlight < handle
	
	properties (Access = public)
		
		AvailableGPS % GPS availability [true/false].
		AvailableTLE % TLE availability [true/false].
		FormationMode % Mode for the satellites formation flight.
		Orbit % Object of class Orbit.
		Satellites % Object array of class IvanovSatellite.
		SSCoeff % Schweighart-Sedgwick coefficient.
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
		
		%SSCoeff = 1               %
		Panels = [0 0 2]          %
		SSTTemp                   %
		
		%MeanAnomalyOffSet = pi/4  % For pi/2, satellite crosses on the 
		%poles; for 0, satellite crosses at equator
		%NumberOfModes = 10        % Checked, not used!
		% ^ Before, was used to set SSParameters
		%SSParameters              % Checked, not used
		
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
% - Schweighart-Sedgwick coefficient.
%_____________________________________________________________________
			
			this.Orbit = orbit;
			this.TotalSatellites = ns;
			this.AvailableGPS = gps;
			this.AvailableTLE = tle;
			this.SSCoeff = 1;
			
			% Allocate object array to property Satellites.
			this.Satellites = IvanovSatellite.empty(ns,0);
			
			% Populate array with objects of class IvanovSatellite.
			for i = 1 : ns
				this.Satellites(i) = IvanovSatellite(orbit,gps,tle);
			end
			
			% Set default formation mode.
			this.FormationMode = 1;
			
			
			
			
			
			
			
			
			% CHECK USAGE:
			
			this.TimeTemp = 0 : this.CompStep : this.LengthControlLoop;
			this.SSTTemp = zeros(9, ns, size(this.TimeTemp,2));
			
			for i = 1 : ns
				
				this.SSTTemp(1,i,1) = ... % Position X.
					(i-1) * this.EjectionVelocity * this.TimeBetweenEjections;
				
				this.SSTTemp(4,i,1) = 0; % Velocity U.
				this.SSTTemp(7,i,1) = 0; % Alpha.
				this.SSTTemp(8,i,1) = 0; % Beta.
				this.SSTTemp(9,i,1) = 0; % Gamma.
				
			end
			
			% To do:
			% Provide documentation for SSParameters.
			% SSParameters and NumberOfModes not used in Ivanov's case.
			% this.NumberOfModes = 10;
			% this.SSParameters = zeros(6, ns, this.NumberOfModes);
			
			% MeanAnomalyOffSet not used in Ivanov's case.
			% For pi/2, satellite crosses on the poles;
			% for 0,    satellite crosses at equator.
			% this.MeanAnomalyOffSet = pi/4;
			
		end
		
		function mode = getFormationFlightMode(this)
%% Get formation flight mode.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________
			
			mode = this.FormationMode;
			
		end
		
		function this = setFormationFlightMode(this,newMode)
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
		
		function sstDesired = getDesiredSST(this,time,satID)
%% Get desired SST.
%_____________________________________________________________________
%
% Desired solution for Ivanov's case.
%_____________________________________________________________________
			
			% Does this make sense?
			% Is size of 'time' always 1?
			sstDesired = zeros(9,size(time,2));
			
			% Analytical solution according to Ivanov.
			switch this.FormationMode
				case 1
					A = 100;
					D = 115;
				case 2
					factor = 1000;
					A = factor * 100;
					D = factor * 115;
				otherwise
					% To do:
					% Throw error here if formation mode value is not expected.
					%
			end
			
			meanMotion = this.Orbit.MeanMotionRad; % Mean motion [rad/s].
			
			switch satID
				case 1
					
					sstDesired(1,:) = -D;
					
				case 2
					
					sstDesired(1,:) = D;
					
				case 3
					
					sstDesired(1,:) = 2 * A *           ...
						cos(meanMotion * time - acos(1/3));
					
					sstDesired(2,:) =     A * sqrt(3) * ...
						sin(meanMotion * time);
					
					sstDesired(3,:) =     A *           ...
						sin(meanMotion * time - acos(1/3));
					
					sstDesired(4,:) = 2 * A *           ...
						-sin(meanMotion * time - acos(1/3)) * meanMotion;
					
					sstDesired(5,:) =     A * sqrt(3) * ...
						cos(meanMotion * time)              * meanMotion;
					
					sstDesired(6,:) =     A *           ...
						cos(meanMotion * time - acos(1/3))  * meanMotion;
					
				case 4
					
					sstDesired(1,:) = 2 * A *           ...
						cos(meanMotion * time);
					
					sstDesired(2,:) =     A * sqrt(3) * ...
						sin(meanMotion * time + acos(1/3));
					
					sstDesired(3,:) =     A *           ...
						sin(meanMotion * time);
					
					sstDesired(4,:) = 2 * A *           ...
						-sin(meanMotion * time)            * meanMotion;
					
					sstDesired(5,:) =     A * sqrt(3) * ...
						cos(meanMotion * time + acos(1/3)) * meanMotion;
					
					sstDesired(6,:) =     A *           ...
						cos(meanMotion * time)             * meanMotion;
					
				otherwise
					% To do:
					% Throw error here if satellite ID number is not expected.
					%
			end
			
		end
		
	end % Methods.
	
end % Class.
