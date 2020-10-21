%% Instantiate satellite objects
% ______________________________________________________________________________
%
% Class Satellite:
%
% Detailed explanation goes here.
% ______________________________________________________________________________

classdef Satellite < handle
  
  properties (GetAccess = public, SetAccess = public)
    
    controlVector
    controlVectorTM
    forceVector
    forceVectorTM
    
    Alive % If satellite is alive or not [true/false].
    AutoResponse % If satellite should send responses [true/false].
    CommChannel % Communication channel.
    FlightControl % Object of class FlightControl.
    GPSModule % Object of class GPS.
    Name % Unique name for identification of the satellite.
    Orbit % Object of class Orbit.
 
    TimeVectorTM % Time vector for plotting.
    TimeVectorTMLengths % Length of the time vector for each satellite.   
    SatPositionsTM % Satellite positions in relation to the reference.
    SatPositionsTMLengths % Length of the satellite positions vectors.
    SatStatesTM % Satellites states for plotting.
    SatStatesTMLengths % Length of the satellite states vectors.

  end
  
  properties (GetAccess = public, SetAccess = private)
    
    % N/A
    
  end
	
	methods % Constructor.
    
    function this = Satellite(altitude, deltaAngle, autoResponse, ...
        gpsAvailability, tleAvailability, numSats, mode, ffpsPath)
      %% Constructor for class Satellite
      %
      % Input:
      % - Altitude [meters].
      % - Roll, pitch, yaw angles resolution [deg].
      % - Auto response activation [boolean].
      % - GPS availability [boolean].
      % - TLE availability [boolean].
      % - Total number of satellites in the formation.
      % - Mode for the satellites formation flight.
      %
      % Output:
      % - Object of class Satellite.
      
			this.AutoResponse = autoResponse;
			this.FlightControl = FlightControl(numSats, mode, deltaAngle, ffpsPath);
			this.Orbit = Orbit(altitude, gpsAvailability, tleAvailability);
			this.GPSModule = GPS();
      
      this.controlVector=zeros(3,numSats);
      this.controlVectorTM=zeros(1,3);
      this.forceVector=zeros(1,3);
      this.forceVectorTM=zeros(1,3);

      % Set time vectors for simulation.
      this.TimeVectorTM = zeros(numSats,1);
      this.TimeVectorTMLengths = ones(numSats,1);      
      
      this.SatPositionsTM = zeros(numSats,3,1);
      this.SatPositionsTMLengths = ones(numSats,1);
      this.SatStatesTM = zeros(numSats,9,1);
      this.SatStatesTMLengths = ones(numSats,1);

		end
		
	end % Constructor.
	
	methods (Access = public)
		
		initialize(this, id, commChannel, iniConditions)
		comm(this, msg)
		fly(this, currentOrbitSection, sizeOrbitSection)
		broadcastSend(this, msg)
		msg = broadcastReceive(this)
		turnOff(this)
    
    function updControlVectorTM(this, id)
      this.controlVectorTM = [this.controlVectorTM; this.controlVector(:,id)'];
    end   
    function updForceVectorTM(this,id)
      this.forceVectorTM = [this.forceVectorTM; this.forceVector'];
    end		
    function updSatPositionsTM(this, satID, newValue) %! give better name this is the reference position change
      nextPos = this.SatPositionsTMLengths(satID) + 1;
      this.SatPositionsTM(satID, 1:3, nextPos) = newValue;
      this.SatPositionsTMLengths(satID) = this.SatPositionsTMLengths(satID) + 1;
    end
    function updTimeVectorTM(this, satID, timestep, lastTime)
      % Increment length of the time vector for the current satellite.
      % At the end of the simulation, the values in TimeLength
      % should be equal for all satellites. Later, use this value to
      % prealocate memory for the TimePlot vector in order to reduce
      % computational time.
      % OK
%      lastPos = this.TimeVectorLengths(satID);
%      nextPos = this.TimeVectorLengths(satID) + 1;
%      this.TimeVector(satID, nextPos) = this.TimeVector(satID, lastPos) + timestep;
%      this.TimeVectorLengths(satID) = this.TimeVectorLengths(satID) + 1;

      nextPos = this.TimeVectorTMLengths(satID) + 1;
      this.TimeVectorTM(satID, nextPos) = lastTime + timestep;
      this.TimeVectorTMLengths(satID) = this.TimeVectorTMLengths(satID) + 1;
    end
    function updSatStatesTM(this, satID, satState)
      nextPos = this.SatStatesTMLengths(satID) + 1;
      this.SatStatesTM(satID, 1:9, nextPos) = satState;
      this.SatStatesTMLengths(satID) = this.SatStatesTMLengths(satID) + 1;
    end    
    function updSatStatesIni(this, satID, satState)
      this.SatStatesTM(satID, 1:9, 1) = satState;  
    end
    function writeAndResetTM(this, numSats,satID)
      writematrix(this.controlVectorTM,strcat('ControlVectorTM',num2str(satID),'.csv'),'WriteMode','append');
      writematrix(this.forceVectorTM,strcat('ForceVectorTM',num2str(satID),'.csv'),'WriteMode','append');
      writematrix(squeeze(this.SatPositionsTM(satID,1:3,:))',strcat('SatPositionTM',num2str(satID),'.csv'),'WriteMode','append');
      writematrix(squeeze(this.TimeVectorTM(satID,:))',strcat('TimeVectorTM',num2str(satID),'.csv'),'WriteMode','append');      
      writematrix(squeeze(this.SatStatesTM(satID,1:9,:))',strcat('SatStatesTM',num2str(satID),'.csv'),'WriteMode','append'); 
      this.controlVectorTM=[];
      this.forceVectorTM=[];
      this.SatPositionsTM = [];
      this.SatPositionsTMLengths(satID) = 0;    
      this.TimeVectorTM = [];
      this.TimeVectorTMLengths(satID) = 0;
      this.SatStatesTM=[];
      this.SatStatesTMLengths(satID) = 0;
    end
    
    
	end % Public methods.
	
end % Class Satellite.
