function msg = broadcastReceive(this)
%% Receive information broadcasted by satellites in the formation.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

msg = zeros(6, this.FlightControl.NumSatellites);

for satID = 1 : this.FlightControl.NumSatellites
	if satID ~= this.FlightControl.SatID
		msg(:, satID) = labReceive(satID);
	end
end

end % Function Satellite.broadcastReceive.
