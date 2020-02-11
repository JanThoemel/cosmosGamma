function turnOff(this)
%% Turn off the satellite.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

msg = sprintf('Satellite %d will turn off now',...
	this.FlightControl.SatID);

this.comm(msg);

this.Alive = false;

end % Function Satellite.turnOff.
