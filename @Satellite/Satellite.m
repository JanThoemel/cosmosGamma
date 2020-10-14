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
 
    TimeVector % Time vector for plotting.
    TimeVectorLengths % Length of the time vector for each satellite.   
    SatPositions % Satellite positions in relation to the reference.
    SatPositionsLengths % Length of the satellite positions vectors.
    SatStates % Satellites states for plotting.
    SatStatesLengths % Length of the satellite states vectors.

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
      this.TimeVector = zeros(numSats,1);
      this.TimeVectorLengths = ones(numSats,1);      
      
      this.SatPositions = zeros(numSats,3,1);
      this.SatPositionsLengths = ones(numSats,1);
      this.SatStates = zeros(numSats,9,1);
      this.SatStatesLengths = ones(numSats,1);

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
      %this.controlVectorTM = [this.controlVectorTM; this.controlVector(:,id)'];
      %fprintf('\n%d %d %d',size(this.controlVector));
      writematrix(this.controlVector(:,id)',strcat('TMControlVector',num2str(id),'.csv'),'WriteMode','append');
    end
    
    function updForceVectorTM(this,id)
      writematrix(this.forceVector',strcat('TMForceVector',num2str(id),'.csv'),'WriteMode','append');
    end
		
        %! give better name this is the reference position change
    function updSatPositions(this, satID, newValue)
      nextPos = this.SatPositionsLengths(satID) + 1;
      this.SatPositions(satID, 1:3, nextPos) = newValue;
      this.SatPositionsLengths(satID) = this.SatPositionsLengths(satID) + 1;
      writematrix(newValue',strcat('TMSatPosition',num2str(satID),'.csv'),'WriteMode','append');
    end

    function updTimeVector(this, satID, timestep)
      % Increment length of the time vector for the current satellite.
      % At the end of the simulation, the values in TimeLength
      % should be equal for all satellites. Later, use this value to
      % prealocate memory for the TimePlot vector in order to reduce
      % computational time.
      lastPos = this.TimeVectorLengths(satID);
      nextPos = this.TimeVectorLengths(satID) + 1;
      this.TimeVector(satID, nextPos) = this.TimeVector(satID, lastPos) + timestep;
      this.TimeVectorLengths(satID) = this.TimeVectorLengths(satID) + 1;
      writematrix(this.TimeVector(satID, nextPos),strcat('TMTimeVector',num2str(satID),'.csv'),'WriteMode','append');      
    end

    function updSatStates(this, satID, satState)
      nextPos = this.SatStatesLengths(satID) + 1;
      this.SatStates(satID, 1:9, nextPos) = satState;
      this.SatStatesLengths(satID) = this.SatStatesLengths(satID) + 1;
      writematrix(satState',strcat('TMSatStates',num2str(satID),'.csv'),'WriteMode','append');      
    end
    
    function updSatStatesIni(this, satID, satState)
      this.SatStates(satID, 1:9, 1) = satState;
    end
    
	end % Public methods.
	
end % Class Satellite.
