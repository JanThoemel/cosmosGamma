function groundSend(this, msg)
%% Send message to ground station.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

if this.AutoResponse
  % Define the structure and content of the message.
  msg = sprintf('[%s] %s', this.SatName, msg);
  % Send message through communication channel.
  send(this.CommChannel, msg);
end

end % Function Communication.groundSend().
