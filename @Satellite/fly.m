function fly(this)
%% Initialize flight control.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

% Get updated orbital parameters from GPS/TLE.
orbitCounter = this.GPSModule.getOrbitCounter();
meanAnomalyFromAN = this.GPSModule.getMeanAnomalyFromAN();

% Update orbital parameters.
this.Orbit.updateOrbitalParams(orbitCounter, meanAnomalyFromAN);
























% Update duration of the current orbit.
this.Orbit.updateOrbitDuration();

end % Function fly.
