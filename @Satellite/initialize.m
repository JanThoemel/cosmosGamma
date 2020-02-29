function initialize(this, id, commChannel)
%% Initialize satellite.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

% Update satellite ID in the formation flight.
this.FlightControl.updateSatelliteID(id);

if this.FlightControl.SatID ==2
  this.FlightControl.State          = [-950 0 0 0 0 0 0 0 0]';
else
  this.FlightControl.State          = zeros(9, 1);
end

% Set satellite name.
this.Name = ['sat ',num2str(id)];

% Set satellite communication channel.
this.CommChannel = commChannel;

% Make satellite alive.
this.Alive = true;
msg = sprintf('Satellite number %d is alive', id);
this.comm(msg);

% Get battery status from the satellite.
battery_status = 1;
if battery_status
	% Switch on the GPS.
end

end % Function Satellite.initialize.
