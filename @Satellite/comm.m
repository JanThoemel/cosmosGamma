function comm(this, msg)
%% Send signal response through communication antennas.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

% Send message through the communication channel.
msg = ['[sat ',num2str(this.ID),'] ',msg];
send(this.CommChannel, msg);

end % Function comm.
