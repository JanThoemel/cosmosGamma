function avg = getStateErrorAverage(this)
%% Calculate average state errors of the satellites in the formation.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

avg = zeros(6, 1);

for i = 1 : 6 % for line in [x, y, z, u, v, w].
	for satID = 1 : this.NumSatellites % for satID in [1 : ns].
		avg(i) = avg(i) + this.StateErrors(i, satID);
	end
	avg(i) = avg(i) / this.NumSatellites;
end

this.StateErrorsAvg(:, this.SatID) = avg;

end % Function FlightControl.getStateErrorAverage.
