function avg = getStateErrorAverage(this, thisID, receivedStateErrors)
%% Calculate average state errors of the satellites in the formation.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

avg = zeros(6, this.NumSatellites);

% Merge received state errors with the state errors of this satellite.
receivedStateErrors(:,thisID) = this.StateErrors(:,thisID);
this.StateErrors = receivedStateErrors;

for i = 1:6 % for line in [x, y, z, u, v, w].
	for j = 1 : this.NumSatellites % for satID in [1:ns].
		avg(i,thisID) = avg(i,thisID) + this.StateErrors(i,j);
	end
	avg(i,thisID) = avg(i,thisID) / this.NumSatellites;
end

end % Function FlightControl.getStateErrorAverage.
