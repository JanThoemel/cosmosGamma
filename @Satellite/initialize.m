function initialize(this, id, commChannel, iniConditions)
%% Initialize satellite
% ______________________________________________________________________________
%
% Details here.
% ______________________________________________________________________________

% Update satellite ID in the formation flight.
this.FlightControl.updateSatelliteID(id);

% This section has been removed
% This needs to be better implemented in selection of formation mode
% % if this.FlightControl.SatID ==2
% %   this.FlightControl.State          = [-950 0 0 0 0 0 0 0 0]';
% % else
% %   this.FlightControl.State          = zeros(9, 1);
% % end

% Read formation flight parameters from JSON file.
fid = fopen(this.FlightControl.FFPSFilePath,'r');
this.FlightControl.FFPS = jsondecode(fscanf(fid,'%s'));
fclose(fid);

% Set satellite name.
this.Name = ['sat ',num2str(id)];

% Set satellite communication module.
this.CommModule.CommChannel = commChannel;
this.CommModule.SatID = id;
this.CommModule.SatName = this.Name;

% Make satellite alive.
this.Alive = true;
msg = sprintf('Satellite %d is alive', id);
this.CommModule.groundSend(msg);

% Get battery status from the satellite.
battery_status = 1;
if battery_status
	% Switch on the GPS.
end

%% set initial conditions
this.FlightControl.State          = iniConditions';

%% delete old telemetry files, this needs to move to Satellite
this.deleteTelemetryFiles(id);

end % Function Satellite.initialize.
