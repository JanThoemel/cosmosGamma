function initialize(this, id)
%% Initialize satellite.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

this.ID = id;
this.Alive = true;

if this.AutoResponse
	this.comm(['Satellite number ',num2str(id),' is alive.']);
end




























end % Function initialize.
