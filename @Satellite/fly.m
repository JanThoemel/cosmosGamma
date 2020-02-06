function fly(this)
%% Initialize flight control.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

% Update orbit counter.
% Later from GPS/TLE.
this.OrbitCounter = this.OrbitCounter + 1;

% Set the start time for the current satellite orbit.
startTimeOrbit = posixtime(datetime('now')); % Posixtime [s].









end % Function fly.
