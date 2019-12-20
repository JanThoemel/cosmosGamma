%% Simulation Summary of this class goes here.
%___________________________________________________________________________________________________
%
%  Detailed explanation goes here.
%___________________________________________________________________________________________________

classdef Simulation < handle
	
	properties
		
		MaxOrbits = 10
		OrbitCounter = 0
		SST = zeros(9,1) % satellite state
		
	end
	
	methods
		
		function [goFoFli, batteryOK, modeMsg] = getMode(this)
		%% getMode Summary of this function goes here.
		%  Detailed explanation goes here.
			
			readModeFromFile = 10; % default: go to alive loop/mode
			
			if this.OrbitCounter >= this.MaxOrbits
			%  if maximum number of orbits has been reached
				goFoFli = 10; % mode: exit formation flight
				modeMsg = 'leaving loop - reached maximum number of orbits.';
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