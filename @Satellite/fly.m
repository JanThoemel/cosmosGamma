function fly(this, currentOrbitSection, sizeOrbitSection)
%% Initialize flight control
% ______________________________________________________________________________
%
% Details here.
% method of class Satellite
% ______________________________________________________________________________




%this.Orbit.whereIsTheSun(someAngle)
%this.FlightControl.rotateSun

% Settings for control algorithm, is this necessary in every loop?
%% to-be-double-checked theory: if R is large then the control error is secondary to the minimization of the control action
R=diag([1e13 1e13 1e13]);

% if labindex==2
%   R=diag([1e12 1e12 1e12]);
% elseif labindex==3
%   R=diag([1e14 1e14 1e14]);
% else
%   R=diag([1e13 1e13 1e13]);
% end

[P, IR, A, B] = this.FlightControl.riccatiequation(this.Orbit.MeanMotionRad, this.FlightControl.SSCoeff,R);

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

oldAlphas = this.FlightControl.State(7); %% roll
oldBetas  = this.FlightControl.State(8); %% pitch
oldGammas = this.FlightControl.State(9); %% yaw

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
if 0%labindex==2 || labindex==3%!solve ODE with many small steps until end of timestep
  
  intermediateTime=0;
  intermediateSST=0;
  [dSSTdt, intermediateControlVector2,intermediateTime]=ode15s(@(intermediateTime,intermediateSST) myODE(intermediateTime,intermediateSST,IR,B,P,A,this.FlightControl.StateOld(1:6),this),[0 deltaTime],this.FlightControl.StateOld(1:6));
  [~, intermediateControlVector2,intermediateTime]=myODE([],[],[],[],[],[],[],[]);
  
  %   size(intermediateControlVector2)
  %   size(intermediateTime)
  %   this.controlVector(:,2)
  this.controlVector(:,2)=[0 0 0]';
  for i=1:3
    for j=2:size(intermediateTime,2)
      this.controlVector(i,2)=this.controlVector(i,2)+intermediateControlVector2(i,j)*(intermediateTime(j)-intermediateTime(j-1))/deltaTime;
    end
  end
  %   this.controlVector(:,2)
  %   mean(intermediateControlVector2(1,:))
  %   mean(intermediateControlVector2(2,:))
  %   mean(intermediateControlVector2(3,:))
  %   fprintf('\n------------');
end
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


% To do:
% Rotate solar pressure vector.
% Rotate controlvector shifting/avarageing

masterSatellite = 0;
if masterSatellite == 0
% If no master satellite.
	for k = 1 : size(this.FlightControl.Gammas,2)
		for j = 1 : size(this.FlightControl.Betas,2)
			for i = 1 : size(this.FlightControl.Alphas,2)
				usedTotalForceVector(:,i,j,k) = this.FlightControl.WindPressureVector(:,i,j,k) + this.FlightControl.SolarPressureVector(:,i,j,k);
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
  %% alpha is roll, beta is pitch, gamma is yaw
end
if 2*norm(this.controlVector(:,this.FlightControl.SatID))<norm(this.forceVector)
    this.forceVector=[0 0 0]'; alphaOpt=0; betaOpt=0; gammaOpt=0;
end

this.FlightControl.State(1:6) = (A * this.FlightControl.StateOld(1:6) + B * ...
                                this.forceVector / this.FlightControl.SatelliteMass) *...
                                deltaTime + this.FlightControl.StateOld(1:6);


this.FlightControl.State(7:9) = [alphaOpt betaOpt gammaOpt]'; %% roll, pitch, yaw


% Update duration of the current orbit.
this.Orbit.updateOrbitDuration();


end % Function Satellite.fly


 function [dSSTdt intermediateControlVector2 intermediateTime3]=myODE(intermediateTime,intermediateSST,IR,B,P,A,StateOld,this)

  persistent intermediateControlVector;
  persistent intermediateTime2;
   
  if isempty(intermediateTime)
    intermediateControlVector2=intermediateControlVector(:,2:end);
    intermediateTime3=intermediateTime2(2:end);
    dSSTdt=0;
    clear intermediateControlVector;
    clear intermediateTime2;
  else
    if isempty(intermediateControlVector)
      intermediateControlVector=zeros(3,1);
      intermediateTime2=0;
    end
    this.FlightControl.updateStateDesired(intermediateTime, this.Orbit.MeanMotionRad);
    intermediateControlVectorTemp = -IR*B'*P * (StateOld-this.FlightControl.StateDesired);
    dSSTdt=(A * StateOld + B * intermediateControlVectorTemp);
    intermediateControlVector=[intermediateControlVector intermediateControlVectorTemp];    
    intermediateTime2=[intermediateTime2 intermediateTime];
  end
  
  %varToPassOut=intermediateControlVector;
  %assignin('base','varInBase',varToPassOut);
  %evalin('base','varPassedOut(:,end+1)=varInBase');

 end
