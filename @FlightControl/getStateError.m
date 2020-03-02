function stateErr = getStateError(this)
%% Get updated satellite state error.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

this.StateErrors(1:6, this.SatID) = this.State(1:6) - this.StateDesired(1:6);
stateErr = this.StateErrors(1:6, this.SatID);

end % Function FlightControl.getStateError.
