function updateOrbitalParams(this, orbitFromGPS, meanAnomalyFromAN)
%% Update orbital parameters.
%_____________________________________________________________________
%
% Update later using GPS/TLE.
%
% Density is the minimum density at solar minimum and winter latitude.
% Minimum density in worst case scenario (conservative assumption).
%
% Input:
% - meanAnomalyFromAN : for now, simulation passes this value; later 
%   it will be obtained from GPS/TLE.
%_____________________________________________________________________

% Check if orbit number received from GPS is different than the 
% current orbit counter of the satellite.
if (orbitFromGPS ~= this.OrbitCounter)
	
	% If changed, update counter.
	this.OrbitCounter = orbitFromGPS;
	
	% Update orbit identifier in orbit time vector.
	this.TimeOrbitStart(1) = this.OrbitCounter;
	
	% Set the start time for the current satellite orbit.
	this.TimeOrbitStart(2) = posixtime(datetime('now')); % [s].
	
end

% Update mean anomaly from ascending node.
this.MeanAnomalyFromAN = meanAnomalyFromAN;

% Info provided by GPS or two line elements (TLE).
% TLE downloadable from web (American military).
% Compute meanAnomalyFromANGPS and altitudeGPS from available 
% past GPS or TLE/SGP4 data.
% altitudeGPSTLE = 1;
% meanAnomalyFromANGPSTLE = 1;
% time = 1;

if this.AvailableTLE
	msg = ['TLE function has not been implemented yet.\n',...
		'Set the respective simulation parameter to ''false''.'];
	error('Orbit:updateOrbitalParams:notImplementedTLE',msg);
	
	% Update all possible orbital params from GPS/TLE.
	% this.Orbit.Altitude = altitudeGPSTLE;
	% this.Orbit.MeanAnomalyFromAN = meanAnomalyFromANGPSTLE;
	
	% Originally from whereInWhatOrbit():
	% Compute SST here, if possible.
end

% Use sst, meanAnomalyFromAN and altitude either from GPS or 
% from input parameters, %! define rule

% For now, altitude is constant.
% Later:
% this.Altitude = updateAltitude(); % Get altitude from GPS/TLE.

% Using constant atmospheric density from Ivanov's case.
% Otherwise:
% Calculate rho from function fit().
% this.Rho = this.F(this.Altitude);

% Calculate r0 and v.
this.R0 = this.MeanEarthRadius + this.Altitude; % [m].
this.V = sqrt(this.Mu/this.R0); % [m/s].

% Calculate mean motion.
this.MeanMotionRad = sqrt(this.Mu/this.R0^3); % [rad/s].

% Convert mean motion from [rad/s] to [deg/s].
this.MeanMotionDeg = this.MeanMotionRad*180/pi; % [deg/s].

% Calculate semi-major axis and inclination in degrees.
this.SemiMajorAxis = (1/this.MeanMotionRad^2*this.Mu)^(1/3);
this.Inclination = acosd(-(this.SemiMajorAxis/12352000)^(7/2));

end % Function updateOrbitalParams.
