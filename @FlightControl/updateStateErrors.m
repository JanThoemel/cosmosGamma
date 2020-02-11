function updateStateErrors(this, receivedStateErrors)
%% Update state errors from other satellites in the formation.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

% Merge received state errors with the state errors of this satellite.
receivedStateErrors(:,this.SatID) = this.StateErrors(:,this.SatID);
this.StateErrors = receivedStateErrors;

end % Function FlightControl.updateStateErrors.
