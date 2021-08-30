%% Instantiate Navigation objects.
%_____________________________________________________________________
%
% Class Navigation:
%
% Detailed explanation goes here.
%_____________________________________________________________________

classdef Navigation < handle
	
	properties (GetAccess = public, SetAccess = public)
		
		MeanAnomalyFromAN
		OrbitCounter
		
	end
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% Constructor Method %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods % Constructor.
		
		function this = Navigation()
			
			this.OrbitCounter = 0;
			
		end
		
	end % Constructor.
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Public Methods %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	methods (Access = public)
		
		function incrementMeanAnomalyFromAN(this)
			this.MeanAnomalyFromAN = this.MeanAnomalyFromAN + 1;
		end
		
		function incrementOrbitCounter(this)
			this.OrbitCounter = this.OrbitCounter + 1;
		end
		
		function meanAnomalyFromAN = getMeanAnomalyFromAN(this)
			meanAnomalyFromAN = this.MeanAnomalyFromAN;
		end
		
		function orbitCounter = getOrbitCounter(this)
			orbitCounter = this.OrbitCounter;
		end
		
	end % Public methods.
	
end % Class Navigation.
