function turnOff(this)
%% Turn off the satellite.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

msg = sprintf(['Satellite ',num2str(this.ID),' is turning off.']);

this.comm(msg);

this.Alive = false;

end % Function turnOff.
