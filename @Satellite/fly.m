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

% if this.AutoResponse
% 	msg = sprintf(['Orbit ',num2str(this.Orbit.OrbitCounter),...
% 	               ' - Duration ',num2str(timeOrbitDuration),' s']);
% 	this.comm(msg);
% end

end % Function fly.
