%% Ivanov Formation Flight class
%
%  to do:
%  - check sstDesiredFunction property = @IvanovFormationFlightDesired
%  - check @orbitalproperties(altitude)
%  - log.info('Original atmospheric density (rho = %1.3e) is overwritten by Ivanov\'s value (rho = %1.3e)',rho,1e-11)
%  - check usage of variable r0 = radiusOfEarth + altitude
%
%  references:
%  - create Doc for classes: https://nl.mathworks.com/help/matlab/matlab_prog/create-help-for-classes.html

classdef IvanovFormationFlight
	% IvanovFormationFlight Summary of this class goes here
	%   Detailed explanation goes here
	
	properties
		
		TotalTime = 50*90*60      % simulation period [s], i.e approximate multiples of orbit periods (not relevant for cosmosFS)
		CompStep = 9              % computational step size [s]
		LengthControlLoop = 90    % [s]
		TimeTemp                  % duration and interpolation timestep for each control loop
		WakeAerodynamics = 0      % use of wake aerodynamics
		MasterSatellite = 0       % if 0 no master, if 1 active master, if 2 passive master
		
		%
		WindOn = 1                %
		SunOn = 0                 %
		DeltaAngle = 30           % roll, pitch, yaw angle resolution
		Ns = 4                    %
		SatelliteMass = 1         %
		Altitude = 340e3          % [m]
		ArgumentOfPerigeeAtTe0    % not used yet
		TrueAnomalyAtTe0          % not used yet
		EjectionVelocity = 0.5    % [m/s]
		TimeBetweenEjections = 10 % [s]
		PanelSurface = 0.01       % [m^2]
		
		Rho = 1e-11               %
		Tatmos                    %
		V                         %
		RadiusOfEarth             % [m]
		Mu                        %
		MeanMotion                % [rad/s]
		Inclination               %
		
		SSCoeff = 1               %
		Panels = [0 0 2]          %
		SSTTemp                   %
		
		MeanAnomalyOffSet = pi/4  % for pi/2 satellite crosses on the poles; for 0 satellite crosses at equator
		NumberOfModes = 10        %
		SSParameters              %
		
	end
	properties (Access = private)
		
		PrivatePropertyTest
		
	end
	methods
		
		function obj = IvanovFormationFlight()
			% Summary of constructor
			obj.TimeTemp = 0 : obj.CompStep : obj.LengthControlLoop;
			obj.SSTTemp = zeros(9, obj.Ns, size(obj.TimeTemp,2));
			for i = 1 : obj.Ns
				obj.SSTTemp(1,i,1) = (i-1) * obj.EjectionVelocity * obj.TimeBetweenEjections; % x position
				obj.SSTTemp(4,i,1) = 0;                                                       % u velocity
				obj.SSTTemp(7,i,1) = 0;                                                       % alpha
				obj.SSTTemp(8,i,1) = 0;                                                       % beta
				obj.SSTTemp(9,i,1) = 0;                                                       % gamma
			end
			obj.SSParameters = zeros(6, obj.Ns, obj.NumberOfModes);
		end
		
	end
end