%% Instantiate satellites from Ivanov's case.
%_____________________________________________________________________
%
% Class IvanovSatellite:
%
% Detailed explanation goes here.
%_____________________________________________________________________

classdef IvanovSatellite < handle
	
	properties (Access = public)
		
		SST % Satellite state.
		
	end
	
	methods
		
		function this = IvanovSatellite()
%% Constructor for class IvanovSatellite.
%_____________________________________________________________________
%
% Receive:
%
% - none.
%
% Set:
%
% - Satellite states to zero.
%_____________________________________________________________________
			
			this.SST = zeros(9,1); % Satellite state.
			
		end
		
	end
	
end