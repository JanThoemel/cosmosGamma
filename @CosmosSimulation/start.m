function start(this)
%% Initiate Cosmos simulation.
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
timeStartPool = posixtime(datetime('now')); % Posixtime [seconds].

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
		
		this.updateIDX(gps.MeanAnomalyFromAN);
		
		% Pause #1:
		% Wait until end of orbit sections.
		pause( (this.OrbitSections(this.IDX) - gps.MeanAnomalyFromAN) /...
			orbit.MeanMotionDeg / this.AccelFactor);
		
		%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		%%%%%%%%%%%%%%%%%%%%%%%%%% RE-CHECK %%%%%%%%%%%%%%%%%%%%%%%%%%%%
		%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		
		% Start orbit sections loop.
		while this.IDX <= this.NumOrbitSections
			
			% Determine start time of this cycle, in order to subtract the 
			% total cycle duration from the pause time (pause #2).
			timeStartSection = now();
			
			% Start flying on orbital loop.
			currentOrbitSection = this.OrbitSections(this.IDX);
			sat.fly(currentOrbitSection, this.OrbitSectionSize);
			
			% Update time vector for plotting.
			timestep = this.OrbitSectionSize / orbit.MeanMotionDeg;
			this.updTimeVector(id, timestep);
			
			% Send reference position to all non 1-satellites.
			refPosChange = zeros(3,1);
			if id == 1
				refPosChange(1:3) = fc.State(1:3) - fc.StateOld(1:3);
				for satID = 2 : this.NumSatellites
					tag = 1000000 * satID + ...
						10000 * this.IDX + ...
						100 * orbit.OrbitCounter + 1;
					labSend(refPosChange, satID, tag);
				end
			end
			
			% Receive reference position in other satellites.
			if id ~= 1
				tag = 1000000 * id + ...
					10000 * this.IDX + ...
					100 * orbit.OrbitCounter + 1;
				refPosChange = labReceive(1, tag);
			end
			
			% Update vector with satellite positions for plotting.
			this.updSatPositions(id, refPosChange);
			
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%%%%% RE-CHECK %%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			
			% Move coordinate system.
			% Should the old state be shifted as well?
			shift = -refPosChange(1:3);
			fc.shiftState(shift);
			
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%%%%% RE-CHECK %%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			
			
			
			
			
			
			
			
			
			
			
			% Increment section counter.
			this.incrementIDX();
			
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%%%%% RE-CHECK %%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			
			% Pause #2:
			% Add pause after subtracting this section's computing time.
			pause(this.OrbitSectionSize / orbit.MeanMotionDeg /...
				this.AccelFactor - (now() - timeStartSection));
			
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%% MORE CODE HERE %%%%%%%%%%%%%%%%%%%%%%%
			%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			
			% For plotting.
			% SST_PP = [SST_PP sst];
			
		end % While orbit sections loop.
		
		% Check if orbit counter identifiers do not match.
		if (orbit.OrbitCounter ~= orbit.TimeOrbitDuration(1))
			msg = ['Orbit identifiers in orbit.OrbitCounter and ',...
				'orbit.TimeOrbitDuration do not match.'];
			error('Simulation:start:orbitIdentifierNotEqual',msg);
		else
			msg = ['Orbit ',num2str(orbit.OrbitCounter),' finished ',...
				'(',num2str(orbit.TimeOrbitDuration(2)),' s)'];
			sat.comm(msg);
		end
		
		% If maximum number of orbits for the simulation has been reached,
		% turn off the satellite.
		if orbit.OrbitCounter >= this.MaxNumOrbits
			pause(2);
			send(dq,['[sim] Maximum number of orbits reached! ',...
			         'Killing [',sat.Name,']']);
			sat.turnOff();
		end
		
	end % While alive (main orbital loop).
	
	% Globally concatenate all output variables on lab index 1.
	% Must be the last lines of code of the parallel pool.
	satellites = gcat(sat,2,1);
	orbits = gcat(orbit,2,1);
	flightControlModules = gcat(fc,2,1);
	gpsModules = gcat(gps,2,1);
	timeVectorLengths = gcat(this.TimeVectorLengths(id),2,1);
	timeVector = gcat(this.TimeVector(id,:)',2,1);
	
end % Parallel code.

% Get the globally concatenated values stored on lab index 1.
% Must be placed right after the end of the parallel pool.
this.Satellites = satellites{1};
this.Orbits = orbits{1};
this.FlightControlModules = flightControlModules{1};
this.GPSModules = gpsModules{1};
this.TimeVectorLengths = timeVectorLengths{1};
this.TimeVector = timeVector{1};

% Terminate the existing parallel pool session.
delete(gcp('nocreate'));

% Calculate the execution time of the parallel pool.
timeEndPool = posixtime(datetime('now')); % Posixtime [seconds].
timeDurationPool = timeEndPool - timeStartPool;
fprintf('Total simulation time: %s seconds.\n',...
	num2str(timeDurationPool));

end % Function CosmosSimulation.start.
