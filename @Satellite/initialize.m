function initialize(this, id, commChannel)
%% Initialize satellite.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

this.ID = id;
this.Alive = true;
this.CommChannel = commChannel;

if this.AutoResponse
	msg = sprintf(['Satellite number ',num2str(id),' is alive']);
	this.comm(msg);
end

% Get battery status from the satellite.
battery_status = 1;
if battery_status
	% Switch on the GPS.
end

end % Function initialize.
