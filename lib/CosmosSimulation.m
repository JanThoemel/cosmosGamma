%% Create a simulation environment for satellite formation flight.
%_____________________________________________________________________
%
% Class CosmosSimulation:
%
% Detailed explanation goes here.
%_____________________________________________________________________

classdef CosmosSimulation < handle
	
	properties (Access = public)
		
		AccelFactor % Acceleration factor.
		MaxOrbits % Maximum number of orbits to run.
		SST % Satellite states.
		
	end
	
	properties (Access = private)
		
		Status % Simulation status.
		
	end
	
	methods
		
		function this = CosmosSimulation(max_orbits,accel_factor)
%% Constructor for class CosmosSimulation.
%_____________________________________________________________________
%
% Receive:
% - Maximum number of orbits.
% - Acceleration factor.
%
% Set:
% - Satellite states to zero.
%_____________________________________________________________________
			
			this.MaxOrbits = max_orbits;
			this.AccelFactor = accel_factor;
			
			this.SST = zeros(9,1); % Satellite states.
			
		end
		
		function [status, msg] = getStatus(this, current_orbit)
%% Get updated simulation status.
%_____________________________________________________________________
%
% Input:
% - Current orbit of the satellite.
%
% Output:
% - Simulation status: Stop (0) or Keep Running (1).
% - Status message.
%_____________________________________________________________________
			
			if current_orbit >= this.MaxOrbits
				msg = 'Leaving loop - maximum number of orbits reached.';
				status = 0; % Should stop.
			else
				msg = '';
				status = 1; % All good.
			end
			
		end
		
		
%_____________________________________________________________________
	end
	
end
