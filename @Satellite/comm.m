function comm(this, msg)
%% Send signal response through communication antennas.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

% Send message through the communication channel.
send(this.CommChannel, msg);

end % Function comm.
