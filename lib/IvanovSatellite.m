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
		OrbitCounter % Counter for the number of orbits passed.
		SST % Satellite state.
		AvailableGPS % GPS availability [true/false].
		AvailableTLE % TLE availability [true/false].
		
	end
	
	methods
		
		function this = IvanovSatellite(orbit,gps,tle)
%% Constructor for class IvanovSatellite.
%_____________________________________________________________________
%
% Receive:
% - Object of class Orbit.
% - GPS and TLE availability.
%
% Set:
% - Orbit counter to zero.
% - Satellite states to zero.
%_____________________________________________________________________
			
			this.Orbit = orbit;
			this.OrbitCounter = 0;
			this.SST = zeros(9,1); % Satellite state.
			this.AvailableGPS = gps;
			this.AvailableTLE = tle;
			
		end
		
		function this = incrementOrbitCounter(this)
%% Increment counter for the total number of satellite orbits.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________
			
			this.OrbitCounter = this.OrbitCounter + 1;
			
		end
		
		function [altitude] = whereInWhatOrbit(altitude,...
														endOfSectionsCycle)
%% Summary here.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________
			
			% Info provided by GPS or two line elements (TLE).
			% TLE downloadable from web (American military).
			% Compute meanAnomalyFromANGPS and altitudeGPS from available 
			% past GPS or TLE/SGP4 data.
			meanAnomalyFromANGPSTLE = 1;
			altitudeGPSTLE = 1;
			time = 1;
			
			if this.AvailableGPS || this.AvailableTLE
				altitude = altitudeGPSTLE;
				meanAnomalyFromAN = meanAnomalyFromANGPSTLE;
				% Compute SST here, if possible.
			elseif endOfSectionsCycle
				meanAnomalyFromAN = 0.01;
			else
				meanAnomalyFromAN = 120;
			end
			
			% Use sst, meanAnomalyFromAN and altitude either from GPS or 
			% from input parameters, %! define rule
			
			
			
			
		end
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
%_____________________________________________________________________
	end
	
end
