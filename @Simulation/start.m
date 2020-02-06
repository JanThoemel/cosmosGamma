function start(this)
%% Initiate simulation.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

% Create data queue for parallel pool.
dq = parallel.pool.DataQueue;

% Define function to call when new data is received on the DataQueue.
afterEach(dq, @disp);

% Create and return pool with the specified number of workers.
parpool(this.NumSatellites);

% Set the start time for the parallel pool.
startTimePool = posixtime(datetime('now')); % Posixtime [seconds].

% Execute parallel code on workers of parallel pool.
spmd(this.NumSatellites)
	
	% Get unique IDs for each of the satellites, from 1 to N.
	id = labindex;
	
	% Create local aliases for the class objects.
	sat = this.Satellites(id);
	orbit = this.Orbits(id);
	fc = this.FlightControlModules(id);
	
	% Set satellite communication channel as the parpool data queue.
	commChannel = dq;
	
	% Initialize satellites; examples:
	% Satellite(1) will receive ID = 1.
	% Satellite(N) will receive ID = N.
	sat.initialize(id, commChannel);
	
	
	
	
	
	
	
	
	
	
	
end % Parallel code.

% Terminate the existing parallel pool session.
delete(gcp('nocreate'));

end % Function start.
