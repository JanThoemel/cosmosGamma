function msg = broadcastReceive(this)
%% Receive information broadcasted by satellites in the formation.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

msg = zeros(6, this.FlightControl.NumSatellites);

for i = 1 : this.FlightControl.NumSatellites
	if i ~= this.FlightControl.SatID
		msg(:, i) = labReceive(i);
	end
end

end % Function Satellite.broadcastReceive.
