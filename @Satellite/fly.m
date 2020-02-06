function fly(this)
%% Initialize flight control.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

% Update orbital parameters.
% Later from GPS/TLE.
this.OrbitCounter = this.OrbitCounter + 1;

% Set the start time for the current satellite orbit.
timeOrbitStart = posixtime(datetime('now')); % Posixtime [s].






















% Get time now.
timeOrbitEnd = posixtime(datetime('now')); % Posixtime [s].

% Calculate duration of the orbit.
timeOrbitDuration = timeOrbitEnd - timeOrbitStart; % Posixtime [s].

if this.AutoResponse
	msg = sprintf(['Sat ',num2str(this.ID),' - Orbit ',...
	               num2str(this.OrbitCounter),' - Duration ',...
	               num2str(timeOrbitDuration),' s']);
	this.comm(msg);
end

end % Function fly.
