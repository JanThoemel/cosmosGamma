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
	gps = this.GPSModules(id);
	
	% Set satellite communication channel as the parpool data queue.
	commChannel = dq;
	
	% Initialize satellites; examples:
	% Satellite(1) will receive ID = 1.
	% Satellite(N) will receive ID = N.
	sat.initialize(id, commChannel);
	
	while sat.Alive % Sattelites turned on, but still doing nothing.
		
		% Update orbit counter.
		gps.incrementOrbitCounter();
		
		%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		%%%%%%%%%%%%%%%%%%%%%%%%%% RE-CHECK %%%%%%%%%%%%%%%%%%%%%%%%%%%%
		%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		
		% Calculate endOfSectionsCycle.
		endOfSectionsCycle = (this.IDX - 1) / this.NumOrbitSections;
		
		% From whereInWhatOrbit().
		if endOfSectionsCycle
			gps.MeanAnomalyFromAN = 0.01;
		else
			gps.MeanAnomalyFromAN = 120;
		end
		
		% ^
		% Update mean anomaly from ascending node.
		% For now, simulation updates this value.
		% Later, this value will be obtained from GPS/TLE.
		
		%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		%%%%%%%%%%%%%%%%%%%%%%%%%% RE-CHECK %%%%%%%%%%%%%%%%%%%%%%%%%%%%
		%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		
		% Start flying on orbital loop.
		sat.fly();
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		% If maximum number of orbits for the simulation has been reached,
		% turn off the satellite.
		if orbit.OrbitCounter >= this.MaxNumOrbits
			send(dq,['[sim] Maximum number of orbits reached - ',...
			         'Killing Sat ',num2str(sat.ID)]);
			sat.turnOff();
		end
		
	end % While alive.
	
	% Globally concatenate all output variables on lab index 1.
	% Must be the last lines of code of the parallel pool.
	satellites = gcat(sat,2,1);
	orbits = gcat(orbit,2,1);
	flightControlModules = gcat(fc,2,1);
	gpsModules = gcat(gps,2,1);
	
end % Parallel code.

% Get the globally concatenated values stored on lab index 1.
% Must be placed right after the end of the parallel pool.
this.Satellites = satellites{1};
this.Orbits = orbits{1};
this.FlightControlModules = flightControlModules{1};
this.GPSModules = gpsModules{1};

% Terminate the existing parallel pool session.
delete(gcp('nocreate'));

end % Function start.
