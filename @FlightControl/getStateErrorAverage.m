function avg = getStateErrorAverage(this)
%% Calculate average state errors of the satellites in the formation.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

avg = zeros(6, this.NumSatellites);

for i = 1 : 6 % for line in [x, y, z, u, v, w].
	for j = 1 : this.NumSatellites % for satID in [1 : ns].
		avg(i, this.SatID) = avg(i, this.SatID) + this.StateErrors(i, j);
	end
	avg(i, this.SatID) = avg(i, this.SatID) / this.NumSatellites;
end

this.StateErrorsAvg = avg;

end % Function FlightControl.getStateErrorAverage.
