function updateStateError(this, satID)
%% Update satellite state error.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

this.StateErrors(1:6, satID) = ...
	this.State(1:6) - this.StateDesired(1:6);

end % Function updateStateError.
