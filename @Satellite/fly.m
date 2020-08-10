function fly(this, currentOrbitSection, sizeOrbitSection)
%% Initialize flight control
% ______________________________________________________________________________
%
% Details here.
% method of class Satellite
% ______________________________________________________________________________

% Get updated orbital parameters from GPS/TLE.
orbitFromGPS = this.GPSModule.getOrbitCounter();
meanAnomalyFromAN = this.GPSModule.getMeanAnomalyFromAN();

% Update orbital parameters.
this.Orbit.updateOrbitalParams(orbitFromGPS, meanAnomalyFromAN);

% Update wind pressure.
this.FlightControl.updWindPressures(this.Orbit.Rho, this.Orbit.V, this.Orbit.TempAtmos);

% Settings for control algorithm, is this necessary in every loop?
[P, IR, A, B] = this.FlightControl.riccatiequation(this.Orbit.MeanMotionRad, this.FlightControl.SSCoeff);

% determine time elapsed since last ascending equator crossing
time = currentOrbitSection / this.Orbit.MeanMotionDeg;

% Update desired state.
this.FlightControl.updateStateDesired(time, this.Orbit.MeanMotionRad);

% Set and get state error for this satellite in array of errors of all satellites
stateError = this.FlightControl.getStateError();

%%JT: this should go through COM module% Communicate new state error of this satellite to other satellites
this.broadcastSend(stateError);
% Receive the state errors from other satellites
receivedStateErrors = this.broadcastReceive();

% Update information on state errors from other satellites.
this.FlightControl.updateStateErrors(receivedStateErrors);

deltaTime = sizeOrbitSection / this.Orbit.MeanMotionDeg;

this.FlightControl.StateOld = this.FlightControl.State;

oldAlphas = this.FlightControl.State(7);
oldBetas  = this.FlightControl.State(8);
oldGammas = this.FlightControl.State(9);

% Vector of size 3 x sizeAlphas x sizeBetas x sizeGammas.
usedTotalForceVector = zeros(3,...
  size(this.FlightControl.Alphas, 2),...
  size(this.FlightControl.Betas , 2),...
  size(this.FlightControl.Gammas, 2));

% Compute control vector.
for i=1:this.FlightControl.NumSatellites
  this.controlVector(:,i) = -IR * B' * P * this.FlightControl.StateErrors(:, i);
end

%%%%%%%%%%%%%%%%%%%%%%%%%

%!solve ODE with many small steps until end of timestep
% 
varPassedOut=zeros(3,1);
[intermediateSST intermediateTime]=ode45(@(t,y) myODE(intermediateTime,intermediateSST,IR,B,P,A,this.FlightControl.StateOld),[0 deltaTime],this.FlightControl.StateOld);
varPassedOut=varPassedOut(:,2:end);

%!average controlvector
% controlVector=sum(intermediateControlVector.*intermediateTime)/deltaTime;
% for testing: compare averageControlVector to previous controlVector
% for testing, down: compare new stateVector with the one from the ODE solver
%%%%%%%%%%%%%%%%%%%%%%%%%



    %% shift and average control force
    controlVectorMin         = min(this.controlVector(1,:));
    for i=1:this.FlightControl.NumSatellites %% transform error for each satellite
      this.controlVector(1,i)     = this.controlVector(1,i) - controlVectorMin;
    end
    averagecontrolVector     = zeros(3,1);
    for i=1:this.FlightControl.NumSatellites %% compute average error
      averagecontrolVector(2:3)= averagecontrolVector(2:3)+this.controlVector(2:3,i)/this.FlightControl.NumSatellites;      
    end
    for i=1:this.FlightControl.NumSatellites %% assign average error
      this.controlVector(2:3,i) = this.controlVector(2:3,i)-averagecontrolVector(2:3);
    end


% Sunlight rotation will be important for non dusk-dawn orbits.
rotatedSolarPressureVector = this.FlightControl.SolarPressureVector;

% To do:
% Rotate solar pressure vector.

masterSatellite = 0;
if masterSatellite == 0
% If no master satellite.
	for k = 1 : size(this.FlightControl.Gammas,2)
		for j = 1 : size(this.FlightControl.Betas,2)
			for i = 1 : size(this.FlightControl.Alphas,2)
				usedTotalForceVector(:,i,j,k) = this.FlightControl.WindPressureVector(:,i,j,k) + rotatedSolarPressureVector(:,i,j,k);
			end
		end
	end
else
	% To do:
	% Implement cases with master satellite.
end

if norm(this.controlVector(:,this.FlightControl.SatID))==0
  this.forceVector = [0 0 0]'; alphaOpt=0; betaOpt=0; gammaOpt=0;
else
  [this.forceVector, alphaOpt, betaOpt, gammaOpt] = this.FlightControl.findBestAttitude(...
        usedTotalForceVector, this.controlVector(:,this.FlightControl.SatID),...
        this.FlightControl.Alphas, this.FlightControl.Betas, this.FlightControl.Gammas, ...
        oldAlphas, oldBetas, oldGammas);
end
if 2*norm(this.controlVector(:,this.FlightControl.SatID))<norm(this.forceVector)
    this.forceVector=[0 0 0]'; alphaOpt=0; betaOpt=0; gammaOpt=0;
end

this.FlightControl.State(1:6) = (A * this.FlightControl.StateOld(1:6) + B * ...
                                this.forceVector / this.FlightControl.SatelliteMass) *...
                                deltaTime + this.FlightControl.StateOld(1:6);


this.FlightControl.State(7:9) = [alphaOpt betaOpt gammaOpt]';


% Update duration of the current orbit.
this.Orbit.updateOrbitDuration();


end % Function Satellite.fly


 function [dSSTdt intermediateTime]=myODE(intermediateTime,intermediateSST,IR,B,P,A,StateOld)

   this.FlightControl.updateStateDesired(intermediateTime, this.Orbit.MeanMotionRad);

   intermediateControlVector = -IR*B'*P * (StateOld-intermediateDesiredStateVector)';
   dSSTdt=(A * StateOld(1:6)' + B * intermediateControlVector);

   varToPassOut=intermediateControlVector;
   assignin('base','varInBase',varToPassOut);
   evalin('base','varPassedOut(:,end+1)=varInBase');

 end
