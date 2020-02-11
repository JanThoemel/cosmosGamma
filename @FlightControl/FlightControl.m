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
		
		updateStateDesired(this, time, satID, meanMotion)
		
		function mode = getFormationMode(this)
			mode = this.FormationMode;
		end
		
		function setFormationMode(this, formationMode)
			if ~isnumeric(formationMode)
				error('Formation flight mode must be numeric.');
			end
			this.FormationMode = formationMode;
		end
		
	end % Public methods.
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Static Methods %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods (Static)
		
		[P, IR, A, B] = riccatiequation(meanMotion, SSCoeff)
		
	end % Static methods.
	
end % Class FlightControl.
