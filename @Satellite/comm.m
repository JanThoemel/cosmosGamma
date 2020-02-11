function comm(this, msg)
%% Send signal response through communication antennas.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

if this.AutoResponse
	% Send message through the communication channel.
	msg = sprintf('[%s] %s', this.Name, msg);
	send(this.CommChannel, msg);
end

end % Function Satellite.comm.
