%% Instantiate flight control objects.
%_____________________________________________________________________
%
% Class FlightControl:
%
% Detailed explanation goes here.
%_____________________________________________________________________

classdef FlightControl < handle
	
	properties (GetAccess = public, SetAccess = public)
		
		FormationMode % Mode for the satellites formation flight.
		NumSatellites % Total number of satellites in the formation.
		SSCoeff % Schweighart-Sedgwick coefficient.
		State % Satellite state.
		StateDesired % Desired satellite state.
		StateErrors % State errors from all satellites in the formation.
		
	end
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% Constructor Method %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods % Constructor.
		
		function this = FlightControl(ns, mode)
%% Constructor for class FlightControl.
%_____________________________________________________________________
%
% Input:
% - Total number of satellites in the formation.
% - Mode for the satellites formation flight.
%
% Output:
% - Object of class FlightControl.
%_____________________________________________________________________
			
			this.NumSatellites = ns;
			this.FormationMode = mode;
			
			this.State        = zeros(9,1);
			this.StateDesired = zeros(6,1);
			this.StateErrors  = zeros(6,ns);
			
			this.SSCoeff = 1;
			
		end
		
	end % Constructor.
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Public Methods %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods (Access = public)
		
		function mode = getFormationMode(this)
%% Get formation flight mode.
%_____________________________________________________________________
			
			mode = this.FormationMode;
		end
		
		function this = setFormationMode(this, new_mode)
%% Set formation flight mode.
%_____________________________________________________________________
			
			if ~isnumeric(new_mode)
				error('Formation flight mode must be numeric.');
			end
			this.FormationMode = new_mode;
		end
		
		function this = updateStateDesired(this, time, satID, meanMotion)
%% Update desired satellite state.
%_____________________________________________________________________
%
% Desired solution for Ivanov's case.
%
% Input:
% - Mean motion [rad/s].
%_____________________________________________________________________
			
			% Does this make sense?
			% Isn't the size of 'time' always 1?
			% sstDesired = zeros(9,size(time,2));
			sstDesired = zeros(6,1);
			
			% Analytical solution according to Ivanov.
			switch this.FormationMode
				case 1
					A = 100;
					D = 115;
				case 2
					factor = 1000;
					A = factor * 100;
					D = factor * 115;
				otherwise
					% To do:
					% Throw error here if formation mode value is not expected.
					%
			end
			
			switch satID
				case 1
					
					sstDesired(1,:) = -D;
					
				case 2
					
					sstDesired(1,:) = D;
					
				case 3
					
					sstDesired(1,:) = 2 * A *           ...
						cos(meanMotion * time - acos(1/3));
					
					sstDesired(2,:) =     A * sqrt(3) * ...
						sin(meanMotion * time);
					
					sstDesired(3,:) =     A *           ...
						sin(meanMotion * time - acos(1/3));
					
					sstDesired(4,:) = 2 * A *           ...
						-sin(meanMotion * time - acos(1/3)) * meanMotion;
					
					sstDesired(5,:) =     A * sqrt(3) * ...
						cos(meanMotion * time)              * meanMotion;
					
					sstDesired(6,:) =     A *           ...
						cos(meanMotion * time - acos(1/3))  * meanMotion;
					
				case 4
					
					sstDesired(1,:) = 2 * A *           ...
						cos(meanMotion * time);
					
					sstDesired(2,:) =     A * sqrt(3) * ...
						sin(meanMotion * time + acos(1/3));
					
					sstDesired(3,:) =     A *           ...
						sin(meanMotion * time);
					
					sstDesired(4,:) = 2 * A *           ...
						-sin(meanMotion * time)            * meanMotion;
					
					sstDesired(5,:) =     A * sqrt(3) * ...
						cos(meanMotion * time + acos(1/3)) * meanMotion;
					
					sstDesired(6,:) =     A *           ...
						cos(meanMotion * time)             * meanMotion;
					
				otherwise
					% To do:
					% Throw error here if satellite ID number is not expected.
					%
			end
			
			this.StateDesired = sstDesired;
		end
		
	end % Public methods.
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Static Methods %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods (Static)
		
		[P, IR, A, B] = riccatiequation(meanMotion, SSCoeff)
		
	end % Static methods.
	
end % Class FlightControl.
