function turnOff(this)
%% Turn off the satellite.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

this.Alive = false;

msg = sprintf(['Sat ',this.ID,' is dead.']);

this.comm(msg);

end % Function turnOff.
