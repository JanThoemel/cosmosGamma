function fly(this, currentOrbitSection, sizeOrbitSection)
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

% Update wind pressure.
this.FlightControl.updWindPressures( ...
	this.Orbit.Rho, this.Orbit.V, this.Orbit.TempAtmos);

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

% Communicate the calculated average error to the other satellites.
this.broadcastSend(avg);

% Receive the average state errors from other satellites.
receivedAverageStateErrors = this.broadcastReceive();

% Update information on the average state errors.
this.FlightControl.updateStateErrorsAvg(receivedAverageStateErrors);

% From main cosmosFS:
% Check whether all errors have the same value in all satellites.

% Shift error.
this.FlightControl.shiftError();

% Compute attitude and update satellite state.
deltaTime = sizeOrbitSection / this.Orbit.MeanMotionDeg;
this.FlightControl.updState(P, IR, A, B, deltaTime);

% Update duration of the current orbit.
this.Orbit.updateOrbitDuration();

end % Function Satellite.fly.
