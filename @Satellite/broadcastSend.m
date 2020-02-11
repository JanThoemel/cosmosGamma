function broadcastSend(this, msg)
%% Broadcast information to all satellites in the formation.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

for satID = 1 : this.FlightControl.NumSatellites
	if satID ~= this.ID
		labSend(msg, satID);
	end
end

end % Function broadcastSend.
