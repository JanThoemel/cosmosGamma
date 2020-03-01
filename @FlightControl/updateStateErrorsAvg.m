function updateStateErrorsAvg(this, receivedAverageStateErrors)
%% Update average state errors from other satellites in the formation.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

% Merge average state errors received with the one of this satellite.
receivedAverageStateErrors(:,this.SatID) = this.StateErrorsAvg(:,this.SatID);
this.StateErrorsAvg = receivedAverageStateErrors;

end % Function FlightControl.updateStateErrorsAvg.
