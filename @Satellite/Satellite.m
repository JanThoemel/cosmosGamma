%% Instantiate satellite objects
% ______________________________________________________________________________
%
% Class Satellite:
%
% Detailed explanation goes here.
% ______________________________________________________________________________

classdef Satellite < handle
  
  properties (GetAccess = public, SetAccess = public)
    
    Alive % If satellite is alive or not [true/false].
    AutoResponse % If satellite should send responses [true/false].
    CommChannel % Communication channel.
    FlightControl % Object of class FlightControl.
    GPSModule % Object of class GPS.
    Name % Unique name for identification of the satellite.
    Orbit % Object of class Orbit.
    
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
			
		end
		
	end % Constructor.
	
	methods (Access = public)
		
		initialize(this, id, commChannel, iniConditions)
		comm(this, msg)
		fly(this, currentOrbitSection, sizeOrbitSection)
		broadcastSend(this, msg)
		msg = broadcastReceive(this)
		turnOff(this)
		
	end % Public methods.
	
end % Class Satellite.
