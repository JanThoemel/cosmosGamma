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
this.FlightControl.updateStateDesired(time, this.Orbit.MeanMotionRad);

% Get state error.
stateError = this.FlightControl.getStateError();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% RE-CHECK %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Communicate new state error to other satellites.
this.broadcastSend(stateError);

% Receive the state errors from other satellites.
receivedStateErrors = this.broadcastReceive();

% Update information on state errors from other satellites.
this.FlightControl.updateStateErrors(receivedStateErrors);

% Calculate average of the state errors.
avg = this.FlightControl.getStateErrorAverage();












% Update duration of the current orbit.
this.Orbit.updateOrbitDuration();

end % Function Satellite.fly.
