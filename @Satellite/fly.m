function fly(this, currentOrbitSection)
%% Initialize flight control.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

% Get updated orbital parameters from GPS/TLE.
orbitFromGPS = this.GPSModule.getOrbitCounter();
meanAnomalyFromAN = this.GPSModule.getMeanAnomalyFromAN();

% Update orbital parameters.
this.Orbit.updateOrbitalParams(orbitFromGPS, meanAnomalyFromAN);

% Settings for control algorithm, is this necessary in every loop?
[P, IR, A, B] = this.FlightControl.riccatiequation(...
	this.Orbit.MeanMotionRad, this.FlightControl.SSCoeff);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% RE-CHECK %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% From main cosmosFS:
% Set attitude computed in last iteration.
% this.FlightControl.setAttitude();

% Compute attitude for next section.
% Determine desired trajectory.

% Update desired state.
time = currentOrbitSection / this.Orbit.MeanMotionDeg;
this.FlightControl.updateStateDesired(...
	time, this.ID, this.Orbit.MeanMotionRad);

% Update state error.
this.FlightControl.updateStateError(this.ID);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% RE-CHECK %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Communicate new state error to other satellites.
this.broadcastSend(this.FlightControl.StateErrors(:,this.ID));

% Receive the state errors from other satellites.
receivedStateErrors = this.broadcastReceive();

% Update information on state errors from other satellites.
% this.FlightControl.updateStateErrors(receivedStateErrors);

% Calculate average of the state errors.
% avg = this.FlightControl.getStateErrorAverage();
avg = this.FlightControl.getStateErrorAverage(...
	this.ID, receivedStateErrors);












% Update duration of the current orbit.
this.Orbit.updateOrbitDuration();

end % Function fly.
