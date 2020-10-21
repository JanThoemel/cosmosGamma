function broadcastSend(this, msg)
%% Broadcast information to all satellites in the formation.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

for i = 1 : this.FlightControl.NumSatellites
	if i ~= this.FlightControl.SatID
		labSend(msg, i);
	end
end

end % Function Satellite.broadcastSend.
