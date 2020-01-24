%% Main file for cosmosFS.
%
% Priority:
% - @MYcosmosFS line 53, 142: what is idx? idx in @whereInWhatOrbit?
% - go over all steps from MYcosmosFS.m (spmd loop): now at line 136
%
% To do:
% - Add set and get methods for formation flight mode
% - check usage of var wind
% - check usage of var refSurf
% - review @aeroPressureForce.m
% - review @aeroDragLiftSentman.m
% - review @vectorRotation.m
% - review @solarPressureForce.m
%
% Recently done:
% - add class Orbit into IvanovFormationFlight
% - add class CosmosSimulation to main file
% - added lib folder under the same directory of the main file
% - added code to automatically update the working directory
% - added array of IvanovSatellite objects into IvanovFormationFlight
%
% References:
% - https://nl.mathworks.com/help/parallel-computing/parallel.pool.dataqueue.html
% - https://nl.mathworks.com/help/parallel-computing/parpool.html
% - https://nl.mathworks.com/help/parallel-computing/spmd.html
% - https://stackoverflow.com/questions/12385534/spmd-vs-parfor

warning on verbose;
close all; clear all; clc; %#ok<CLALL>

% Change working directory to the directory of this matlab file.
[filepath,~,~] = fileparts(matlab.desktop.editor.getActiveFilename);
cd(filepath);

% Add lib folder to the current matlab path.
current_path = path;
path(current_path,strcat('.',filesep,'lib',filesep));

% Create instance of class CosmosSimulation.
max_number_of_orbits = 10;
acceleration_factor = 10000;
sim = CosmosSimulation(max_number_of_orbits,acceleration_factor);

% Create instance of class Orbit.
altitude = 340000; % [meters].
orbit = Orbit(altitude);

% Create instance of class IvanovFormationFlight.
number_of_satellites = 4;
iv = IvanovFormationFlight(orbit,number_of_satellites);

% Create aliases for satellite objects.
sat = iv.Satellites; % Aliases: sat(1) to sat(n).


%% Section Break

% Create data queue for parallel pool
dq = parallel.pool.DataQueue;

% Define function to call when new data is received on the DataQueue
afterEach(dq, @disp);

% Create and return pool with the specified number of workers
parpool(number_of_satellites);

% Set the start time for the parallel pool
startTime = posixtime(datetime('now')); % Posixtime [seconds]

% Start parallel pool
spmd(iv.Ns) % Execute code in parallel on workers of parallel pool
	
	% Set satellite IDs (sid) for each of the satellites
	sid = labindex;
	alive = true;
	send(dq,['Satellite number ',num2str(sid),' is alive.']);
	
	while alive
		
		[goFoFli, batteryOK, modeMsg] = sim.getMode();
		if batteryOK
			% switch on the GPS
		end
		
		
		alive = false;
		
	end
end

%  Terminate the existing parallel pool session
delete(gcp('nocreate')); 








%% question
% initial idx and altitude
idx=120;


%iv = IvanovFormationFlight();

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

% sim = Simulation();
% sim.MaxOrbits = 10;

%  Creates array of IvanovSatellite objects

% iv.Satellites = IvanovSatellite.empty(iv.Ns,0);
% sat = iv.Satellites; % alias for iv.Satellites
% for i = 1 : iv.Ns
% 	sat(i) = IvanovSatellite();
% end


%% Creates and starts a parallel pool
%
clc
%

% dq = parallel.pool.DataQueue;
% afterEach(dq, @disp); % defines a function to call when new data is received on the DataQueue
% parpool(iv.Ns); % creates and returns a pool with the specified number of workers
% 
% startTime = posixtime(datetime('now')); % posixtime, i.e. seconds



disp('end');