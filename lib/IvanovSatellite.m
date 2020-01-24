%% Instantiate satellites from Ivanov's case.
%_____________________________________________________________________
%
% Class IvanovSatellite:
%
% Detailed explanation goes here.
%_____________________________________________________________________

classdef IvanovSatellite < handle
	
	properties (Access = public)
		
		OrbitCounter % Counter for the number of orbits passed.
		SST % Satellite state.
		
	end
	
	methods
		
		function this = IvanovSatellite()
%% Constructor for class IvanovSatellite.
%_____________________________________________________________________
%
% Receive:
% - none.
%
% Set:
% - Orbit counter to zero.
% - Satellite states to zero.
%_____________________________________________________________________
			
			this.OrbitCounter = 0;
			this.SST = zeros(9,1); % Satellite state.
			
		end
		
		function this = incrementOrbitCounter(this)
%% Increment counter for the total number of satellite orbits.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________
			
			this.OrbitCounter = this.OrbitCounter + 1;
			
		end
		
%_____________________________________________________________________
	end
	
end