%% Create a simulation environment for satellite formation flight.
%_____________________________________________________________________
%
% Class CosmosSimulation:
%
% Detailed explanation goes here.
%_____________________________________________________________________

classdef CosmosSimulation < handle
	
	properties (Access = public)
		
		MaxOrbits % Maximum number of orbits to run.
		AccelFactor % Acceleration factor.
		SST % Satellite states.
		
	end
	
	properties (Access = private)
		
		OrbitCounter % Counter for number of orbits passed.
		
	end
	
	methods
		
		function this = CosmosSimulation(max_orbits,accel_factor)
%% Constructor for class CosmosSimulation.
%_____________________________________________________________________
%
% Receive:
%
% - Maximum number of orbits.
% - Acceleration factor.
%
% Set:
%
% - Orbit counter to zero.
% - Satellite states to zero.
%_____________________________________________________________________
			
			this.MaxOrbits = max_orbits;
			this.AccelFactor = accel_factor;
			
			this.OrbitCounter = 0;
			this.SST = zeros(9,1); % Satellite states.
			
		end
		
		function [goFoFli, batteryOK, modeMsg] = getMode(this)
		%% Summary of this function goes here.
		%  Detailed explanation goes here.
			
			readModeFromFile = 10; % default: go to alive loop/mode
			
			if this.OrbitCounter >= this.MaxOrbits
			%  if maximum number of orbits has been reached
				goFoFli = 10; % mode: exit formation flight
				modeMsg = ...
					'leaving loop - reached maximum number of orbits.';
			elseif readModeFromFile == 0
			%  not implemented yet
				goFoFli = 20;
				modeMsg = 'leaving loop - filestop';
			elseif this.OrbitCounter < 1000
				goFoFli = 1; % mode: formation flight
				modeMsg = '';
			else
				goFoFli = 2;
				modeMsg = '';
			end
			
			batteryOK = 1;
		end
		
	end
	
end