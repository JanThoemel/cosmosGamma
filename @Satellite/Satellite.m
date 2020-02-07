%% Instantiate satellite objects.
%_____________________________________________________________________
%
% Class Satellite:
%
% Detailed explanation goes here.
%_____________________________________________________________________

classdef Satellite < handle
	
	properties (GetAccess = public, SetAccess = public)
		
		Alive % If satellite is alive or not [true/false].
		AutoResponse % If satellite should send responses [true/false].
		CommChannel % Communication channel.
		FlightControl % Object of class FlightControl.
		GPSModule % Object of class GPS.
		ID % Unique identification number of the satellite.
		Orbit % Object of class Orbit.
		
	end
	
	properties (GetAccess = public, SetAccess = private)
		
	end
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% Constructor Method %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods % Constructor.
		
		function this = Satellite(altitude, resp, gps, tle, ns, mode)
%% Constructor for class Satellite.
%_____________________________________________________________________
%
% Input:
% - Altitude [meters].
% - GPS availability [boolean].
% - TLE availability [boolean].
% - Total number of satellites in the formation.
% - Mode for the satellites formation flight.
%
% Output:
% - Object of class Satellite.
%_____________________________________________________________________
			
			this.AutoResponse = resp;
			this.FlightControl = FlightControl(ns, mode);
			this.Orbit = Orbit(altitude, gps, tle);
			this.GPSModule = GPS();
			
		end
		
	end % Constructor.
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Public Methods %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods (Access = public)
		
		initialize(this, id, commChannel)
		comm(this, msg)
		fly(this)
		turnOff(this)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		%DELETEEE!!
		
		
		
		
		function this = whereInWhatOrbit(this,endOfSectionsCycle)
%% Summary here.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________
			
			% Info provided by GPS or two line elements (TLE).
			% TLE downloadable from web (American military).
			% Compute meanAnomalyFromANGPS and altitudeGPS from available 
			% past GPS or TLE/SGP4 data.
			altitudeGPSTLE = 1;
			meanAnomalyFromANGPSTLE = 1;
			%time = 1;
			
			if this.AvailableGPS || this.AvailableTLE
				this.Orbit.Altitude = altitudeGPSTLE;
				this.Orbit.MeanAnomalyFromAN = meanAnomalyFromANGPSTLE;
				% Compute SST here, if possible.
			elseif endOfSectionsCycle
				this.Orbit.MeanAnomalyFromAN = 0.01;
			else
				this.Orbit.MeanAnomalyFromAN = 120;
			end
			
			% Use sst, meanAnomalyFromAN and altitude either from GPS or 
			% from input parameters, %! define rule
			
			% Update orbital parameters for the satellites
			this.Orbit.updateOrbitalParams(this.Orbit.Altitude);
			
		end
		
	end % Public methods.
	
end % Class Satellite.
