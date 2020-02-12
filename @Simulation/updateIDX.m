function updateIDX(this, meanAnomalyFromAN)
%% Update property IDX.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

this.IDX = find(...
	this.OrbitSections >= meanAnomalyFromAN, 1, 'first');

this.incrementIDX();

end % Function Simulation.updateIDX.
