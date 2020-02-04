%% Instantiate satellites from Ivanov's case.
%_____________________________________________________________________
%
% Class IvanovSatellite:
%
% Detailed explanation goes here.
%_____________________________________________________________________

classdef IvanovSatellite < handle
	
	properties (Access = public)
		
		Orbit % Object of class Orbit.
		State % Satellite state.
		StateDesired % Desired satellite state.
		StateError % Satellite state error.
		
		TotalSatellites % Total number of satellites in the formation.
		
	end
	
	properties (Access = private)
		
		AvailableGPS % GPS availability [true/false].
		AvailableTLE % TLE availability [true/false].
		OrbitCounter % Counter for the number of orbits passed.
		
	end
	
	methods
		
		function this = IvanovSatellite(orbit,gps,tle,ns)
%% Constructor for class IvanovSatellite.
%_____________________________________________________________________
%
% Receive:
% - Object of class Orbit.
% - GPS and TLE availability.
% - Number of satellites in the formation.
%
% Set:
% - Orbit counter to zero.
% - Satellite states to zero.
%_____________________________________________________________________
			
			this.Orbit = orbit;
			this.OrbitCounter = 0;
			this.AvailableGPS = gps;
			this.AvailableTLE = tle;
			
			this.State        = zeros(9,1);
			this.StateDesired = zeros(6,1);
			this.StateError   = zeros(6,ns);
			
			this.TotalSatellites = ns;
			
		end
		
		function this = incrementOrbitCounter(this)
%% Increment counter for the total number of satellite orbits.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________
			
			this.OrbitCounter = this.OrbitCounter + 1;
			
		end
		
		function orbitNum = getCurrentOrbitNumber(this)
%% Get current orbit number.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________
			
			orbitNum = this.OrbitCounter;
			
		end
		
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
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
%_____________________________________________________________________
	end
	
end
