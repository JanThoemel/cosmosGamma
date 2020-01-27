%% Summary of this class goes here.
%_____________________________________________________________________
%
% Class Orbit:
%
% Detailed explanation goes here.
%_____________________________________________________________________

classdef Orbit < handle
	
	properties (Access = public)
		
		Altitude % Height above sea level [m].
		Rho % Atmospheric density [kg/m^3].
		R0 % Mean Earth's radius plus altitude [m].
		V % Velocity [m/s].
		MeanMotion % Converted mean motion [deg/s].
		SemiMajorAxis % Check function for possible simplification.
		Inclination % Orbital inclination [deg].
		
	end
	
	properties (Access = private)
		
		MeanEarthRadius = 6371000 % Mean Earth's radius [m].
		Mu = 3.986004418e14 % Earth's gravitational parameter [m^3/s^2].
		RhoArray % Constant array set in constructor.
		AtmosTemp = 900 % Temperature of the atmosphere [K].
		J2 = 0.00108263 % To be checked.
		F % From function fit().
		
	end
	
	methods
		
		function this = Orbit(altitude)
%% Constructor for class Orbit.
%_____________________________________________________________________
%
% Receive:
% - Altitude.
%
% Set:
% - Rho array.
% - Function fit().
% - All other orbital parameters in function updateOrbitalParams().
%_____________________________________________________________________
			
			% Set array for atmospheric densities.
			this.RhoArray = [
				300	6.64E-15
				310	5.02E-15
				320	3.82E-15
				330	2.93E-15
				340	2.26E-15
				350	1.75E-15
				360	1.36E-15
				370	1.07E-15
				380	8.37E-16
				390	6.60E-16
				400	5.22E-16
				410	4.14E-16
				420	3.29E-16
				430	2.62E-16
				440	2.10E-16
				450	1.68E-16
				460	1.35E-16
				470	1.08E-16
				480	8.72E-17
				490	7.04E-17
				500	5.70E-17
				510	4.62E-17
				520	3.76E-17
				530	3.06E-17
				540	2.50E-17
				550	2.05E-17
				560	1.68E-17
				570	1.39E-17
				580	1.15E-17
				590	9.55E-18
				600	7.97E-18
				610	6.69E-18
				620	5.64E-18
				630	4.78E-18
				640	4.08E-18
				650	3.50E-18
				660	3.03E-18
				670	2.63E-18
				680	2.31E-18
				690	2.04E-18
				700	1.81E-18
				710	1.62E-18
				720	1.46E-18
				730	1.32E-18
				740	1.21E-18
				750	1.11E-18
				760	1.02E-18
				770	9.49E-19
				780	8.84E-19
				790	8.28E-19
				800	7.78E-19
				810	7.34E-19
				820	6.95E-19
				830	6.60E-19
				840	6.28E-19
				850	5.99E-19
				860	5.72E-19
				870	5.48E-19
				880	5.25E-19
				890	5.05E-19
				900	4.85E-19
				910	4.67E-19
				920	4.51E-19
				930	4.35E-19
				940	4.20E-19
				950	4.06E-19
				960	3.93E-19
				970	3.80E-19
				980	3.68E-19
				990	3.57E-19
				1000 3.46E-19];
			
			% Convert first column from [km] to [m].
			this.RhoArray(:,1) = this.RhoArray(:,1)*1000;
			
			% Convert second column from [g/cm^3] to [kg/m^3].
			this.RhoArray(:,2) = this.RhoArray(:,2)/1000*100^3;
			
			% Use function fit() to calculate rho.
			this.F = fit(this.RhoArray(:,1),this.RhoArray(:,2),'exp1');
			
			% this.AtmosTemp:
			% should be interpolated later [K].
			
			% Update orbital parameters.
			this.updateOrbitalParams(altitude);
			
			% Use constant atmospheric density from Ivanov's case.
			this.Rho = 1e-11; % [kg/m^3].
			
		end
		
		function this = updateOrbitalParams(this,altitude)
%% Update orbital parameters.
%_____________________________________________________________________
%
% Density is the minimum density at solar minimum and winter latitude.
% Minimum density in worst case scenario (conservative assumption).
%_____________________________________________________________________
			
			% Update altitude.
			this.Altitude = altitude;
			
			% Using constant atmospheric density from Ivanov's case.
			% Otherwise:
			% Calculate rho from function fit().
			% this.Rho = this.F(this.Altitude);
			
			% Calculate r0 and v.
			this.R0 = this.MeanEarthRadius + this.Altitude; % [m].
			this.V = sqrt(this.Mu/this.R0); % [m/s].
			
			% Calculate mean motion.
			this.MeanMotion = sqrt(this.Mu/this.R0^3); % [rad/s].
			
			% Convert mean motion from [rad/s] to [deg/s].
			this.MeanMotion = this.MeanMotion/pi*180; % [deg/s].
			
			% Calculate semi-major axis and inclination in degrees.
			this.SemiMajorAxis = (1/this.MeanMotion^2*this.Mu)^(1/3);
			this.Inclination = acosd(-(this.SemiMajorAxis/12352000)^(7/2));
			
		end
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
%_____________________________________________________________________
	end
	
end
