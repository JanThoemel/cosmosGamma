function fly(this)
%% Initialize flight control.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

% Get updated orbital parameters from GPS/TLE.
orbitFromGPS = this.GPSModule.getOrbitCounter();
meanAnomalyFromAN = this.GPSModule.getMeanAnomalyFromAN();

% Update orbital parameters.
this.Orbit.updateOrbitalParams(orbitFromGPS, meanAnomalyFromAN);

% Settings for control algorithm, is this necessary in every loop?
[P, IR, A, B] = this.FlightControl.riccatiequation(...
	this.Orbit.MeanMotionRad, this.FlightControl.SSCoeff);





















% Update duration of the current orbit.
this.Orbit.updateOrbitDuration();

end % Function fly.
