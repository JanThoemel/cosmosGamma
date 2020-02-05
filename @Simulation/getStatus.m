function [status, msg] = getStatus(this, current_orbit)
%% Get updated simulation status.
%_____________________________________________________________________
%
% Input:
% - Current orbit of the satellite.
%
% Output:
% - Simulation status: Stop (0) or Keep Running (1).
% - Status message.
%_____________________________________________________________________

if current_orbit >= this.MaxNumOrbits
	msg = 'Leaving loop - maximum number of orbits reached.';
	status = 0; % Should stop.
else
	msg = 'All good.';
	status = 1; % All good.
end

end
