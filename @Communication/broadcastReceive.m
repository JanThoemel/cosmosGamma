function msg = broadcastReceive(this)
%% Receive information broadcasted by satellites in the formation.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

msg = zeros(6, this.NumSats);

for i = 1 : this.NumSats
  if i ~= this.SatID
    msg(:, i) = labReceive(i);
  end
end

end % Function Communication.broadcastReceive().
