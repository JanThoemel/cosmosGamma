function broadcastSend(this, msg)
%% Broadcast information to all satellites in the formation.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

for i = 1 : this.NumSats
  if i ~= this.SatID
    labSend(msg, i);
  end
end

end % Function Communication.broadcastSend().
