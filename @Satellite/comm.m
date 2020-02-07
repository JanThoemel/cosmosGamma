function comm(this, msg)
%% Send signal response through communication antennas.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

if this.AutoResponse
	% Send message through the communication channel.
	msg = ['[sat ',num2str(this.ID),'] ',msg];
	send(this.CommChannel, msg);
end

end % Function comm.
