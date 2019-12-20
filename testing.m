%% Test file for IvanovFormationFlight.m class
%
%  Priority:
%  - go over all steps from MYcosmosFS.m (spmd loop): now at line 136
%
%  To do:
%  - check usage of var wind
%  - check usage of var refSurf
%  - review @aeroPressureForce.m
%  - review @aeroDragLiftSentman.m
%  - review @vectorRotation.m
%  - review @solarPressureForce.m
%
%  Recently done:
%  - added array of IvanovSatellite objects into IvanovFormationFlight
%
%  References:
%  - https://nl.mathworks.com/help/parallel-computing/parallel.pool.dataqueue.html
%  - https://nl.mathworks.com/help/parallel-computing/parpool.html
%  - https://nl.mathworks.com/help/parallel-computing/spmd.html
%  - https://stackoverflow.com/questions/12385534/spmd-vs-parfor

warning on verbose;
close all; clear all; clc; %#ok<CLALL>
cd ../beta-cosmos;

MAX_ORBITS    = 10;
ACCEL_FACTOR  = 10000;
IDX_INIT      = 120;    % initial idx
ALTITUDE_INIT = 340000; % initial altitude [m]

iv = IvanovFormationFlight();

%  Data that will later be per satellite and therefore inside SPMD loop

orbitSection      = 2;                      % size of orbit section [deg]
orbitSectionSize  = 2;                      % size of orbit section [deg]
orbitSections     = 1:orbitSectionSize:360;
orbitCounter      = 0;
error             = zeros(6,iv.Ns);
sst               = zeros(9,1);
sstDesired        = zeros(6,1);
sstOld            = zeros(9,1);
refPosChangeTemp  = zeros(3,1);

%  Plotting variables (will not be used for operational software)

SST_PP          = zeros(9,1); % satellite state
REFPOSCHANGE_PP = zeros(3,1); %
TIME_PP         = 0;          % time for post processing

%  Non-gravitational perturbations

wind     = iv.WindOn * iv.Rho/2 * iv.V^2 * [-1 0 0]';
sunlight = iv.SunOn * 2 * 4.5e-6 * [0 -1 0]'; % only for dawn/dusk orbit
refSurf  = iv.PanelSurface * iv.Panels(3);

%  Force vector determination and angular granulaty

alphas = 0 : iv.DeltaAngle : 360; % roll
betas  = 0 : iv.DeltaAngle : 180; % pitch
gammas = 0 : iv.DeltaAngle : 360; % yaw

%  Calculates pressure forces and returns 4D-Arrays of size:
%  (3, length(alphas), length(betas), length(gammas) )

aeroPressure = aeroPressureForce(wind, iv.PanelSurface, iv.Panels(1), ...
	iv.Panels(2), iv.Panels(3), alphas, betas, gammas, iv.Rho, iv.V, iv.Tatmos);

solarPressure = solarPressureForce(sunlight, iv.PanelSurface, iv.Panels(1), ...
	iv.Panels(2), iv.Panels(3), alphas, betas, gammas);

%  Simulation object and parameters

sim = Simulation();
sim.MaxOrbits = 10;

%  Creates array of IvanovSatellite objects

iv.Satellites = IvanovSatellite.empty(iv.Ns,0);
sat = iv.Satellites; % alias for iv.Satellites
for i = 1 : iv.Ns
	sat(i) = IvanovSatellite();
end


%% Creates and starts a parallel pool
%
clc
%

dq = parallel.pool.DataQueue;
afterEach(dq, @disp); % defines a function to call when new data is received on the DataQueue
parpool(iv.Ns); % creates and returns a pool with the specified number of workers

startTime = posixtime(datetime('now')); % posixtime, i.e. seconds

spmd(iv.Ns) % creates satellites instances
	
	satID = labindex; % ID for each satellite, from 1 to 4
	alive = true;
	send(dq,['No. ',num2str(satID),' is alive.']);
	
	while alive
		
		[goFoFli, batteryOK, modeMsg] = sim.getMode();
		if batteryOK
			% switch on the GPS
		end
		
		
		alive = false;
		
	end
end

delete(gcp('nocreate')); % terminates the existing parallel pool session















disp('end');