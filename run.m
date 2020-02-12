%% File to run Cosmos software.
%_____________________________________________________________________
%
% Priority:
% - @cosmos & @cosmosFS: first uses riccati outside the loop, another
%   uses riccati inside the loop
% - @cosmosFS.m,
%   line 241: orbitalproperties outputs mean motion in [rad/s]; 
%   line 243: whereInWhatOrbit converts to [deg/s];
%   line 95: converts back to [rad/s]
%   @riccatiequation, line 7: mean motion should be in deg/s ?
% - @cosmosFS.m, lines 39, 92: what is idx? idx in @whereInWhatOrbit?
%   is it the ID for the section? why starts at 120?
% - @cosmosFS.m, line 234: check possible values for if, does it
%   make sense? does it always go if = true?
%
% To do:
% - Add option opendocs('update') alias to option publish
% - Rename functions update to upd
%   change the order of class functions to optimize uml diagram
% - Rename function docs and uml to gendocs and genuml
% - Update pauses to not have cases with negative numbers
% - Remove prop AvailableGPS from class Orbit
% - Later update orbitCounter using anglefromAN? update in 
%   Orbit.updateOrbitalParams
% - Remove output of methods that update handle classes
% - Update git config file to properly update all EOL LF and CRLF
% - Add docs('update') option to update publish for all m files
% - Generate pdf publish files for all files in Windows PC
% - Upload to Git all publish files generated in Windows PC
% - Add docs('all') to open publish files as well as docs for classes
% - Update readme.md
%   - To run CosmosFS program, open and run the file 'run.m' in MATLAB
%   - To see documentation for the custom objects and classes used, 
%     enter command 'docs' in MATLAB's Command Window
%   - To see documentation for all files in CosmosFS program, 
%     enter command 'docs('all')' in MATLAB's Command Window
%   - To generate PlantUML code for CosmosFS class diagram, 
%     enter command 'uml' in MATLAB's Command Window
% - check usage of var wind
% - check usage of var refSurf
% - review @aeroPressureForce.m
% - review @aeroDragLiftSentman.m
% - review @vectorRotation.m
% - review @solarPressureForce.m
% - Use class property attribute 'Constant, GetAccess = public' ...
%   for constant attributes e.g. in class Orbit
% - Change class IvanovFormationFlight to FormationFlight, add
%   property 'case' and set property as 'Ivanov'
% - Change class IvanovSatellite to Satellite, add
%   property 'case' and set property as 'Ivanov'
% - @orbitalproperties.m, line 89: Check function semi-major axis and 
%   inclination for possible simplification (class Orbit now)
% - Create package '+cosmos' for all custom functions
% - Custom package to be downloaded and saved into users MATLAB folder
% - Create tutorial to place custom package into users MATLAB folder
%   for both Windows and Mac
%
% Recently done:
% - [11] Rename class Simulation to CosmosSimulation
% - [10] Fix function opendocs
% - [9] Move former lib files to a folder outside git repo
% - Rename functions uml and docs to openuml and opendocs
% - [8] Fix uml stash
% - [7] Add function to update average errors
% - [6] Move prop SatID to FlightControl class
%   update FlightControl functions that receive satID
%   update all calls for sat.ID to look for sat.FlightControl.SatID
% - Add func to update state errors received from other sats
% - [5] Add function to calculate average state errors
% - [4] Add functions to broadcast and receive state errors
% - [3] Update acceleration factor
% - [2] Add state error calculation in sat.fly
% - [1] Add desired state calculation in sat.fly
% - Add sync pauses to simulation.start
% - [7] Fix function uml
% - [6] Add update orbital params in constructor and fix pauses
% - [5] Fix idx update in sim.start
% - [4] Add second pause to simulation.start
% - [3] Add first pause to simulation.start
% - [2] Move riccati equation to class FlightControl
% - [1] Convert all refs from MeanMotion to MeanMotionDeg
% - Remove old func updateOrbitalParams from Orbit
% - Remove comments and func sat.whereInWhatOrbit
% - Fix function uml with branch temp
% - [12] Fix UML with class GPS
% - [10] Fix orbit times and add AutoResponse to func comm
% - Remove status and update comm messages with labels
% - [8] Fix class objects being passed as output of parloop
% - [7] Update custom-classes.txt with class GPS
% - [6] Remove func getStatus from class Simulation
% - [5] Add class GPS and other major updates
% - Add GPS functions to all other classes
% - Create a class GPS
% - Create function GPS.incrementMeanAnomalyFromAN()
% - Create function GPS.incrementOrbitCounter()
% - Create function GPS.getMeanAnomalyFromAN()
% - Create function GPS.getOrbitCounter()
% - Pass props AvailableGPS, AvailableTLE from Satellite to Orbit
% - Create prop IDX for class Simulation
% - [4] Add orbit duration and remove old orbit counter methods
% - [3] Add function fly and stopper for max num of orbits
% - [2] Add loop alive and function to turn off satellite
% - [1] Fix output of parloop
% - Fix function to output satellite communication signals
% - [4] Fix function uml (2)
% - [2] Fix code for listing custom classes into a function
% - Create new set of classes under main directory
% - [6] Remove state error determination and fix later
% - [5] Add state error determination and fix states in Satellite
% - [4] Add trajectory determination sstDesired into parloop
% - [3] Add orbit section loop into parloop
% - [2] Add idx and pause into parloop
% - [1] Change calls for function path to addpath
% - Fix order of commands in function uml (2)
% - ^3 Fix list of git commands to update branch 'out'
% - ^2 Update function uml for Windows compatibility (2)
% - Add branch 'dev' and set uml output to branch 'out'
% - Use proxy service of the PlantUML server to open UML diagram
% - Add temp.uml to GitHub automatically (3)
% - Remove hyperlinks, tooltips and fix visibility codes in m2uml
% - Add spacing between VisibilityCode and Names in m2uml
% - In +m2uml.Property, lines 100 to 109: remove Hyperlink, ToolTip
% - In +m2uml.Operation, lines 87 to 94: remove Hyperlink, ToolTip
% - In +m2uml.ClassNode, lines 134 to 144: remove Hyperlink, ToolTip
% - Fix filesep in m2uml.filespec2fqn for dos/unix compatibility (2)
% - Update custom function uml
% - Fix function publish in function docs as an optional parameter
% - Fix function docs to work in both Windows and Mac
% - Fix documentation tool that shows custom object classes used
% - Fix change of working directory and path of the running m-file
% - Change method to get full path of file run
% - Add class Main and change main.m to run.m
% - Check MeanAnomalyFromAN value
% - Add riccati equation
% - Add to class Orbit the property mean anomaly from ascending node
% - Add to class Orbit the property of mean motion in rad/s
% - Fix implementation of whereInWhatOrbit
% - Add getCurrentOrbitNumber to class Satellite
% - Remove redundant properties in class IvanovFormationFlight
% - Check orbital properties
% - Add function to update orbital parameters in class Orbit
% - Add variables to set GPS/TLE availability
% - Fix orbit counter increment and checkpoint
% - Add print checkpoints in main and end of files
% - Add getStatus() to class Simulation
% - Add orbit counter to IvanovSatellite
% - Add set and get methods for formation flight mode
% - Add class Orbit into IvanovFormationFlight
% - Add class CosmosSimulation to main file
% - Add lib folder under the same directory of the main file
% - Add code to automatically update the working directory
% - Add array of IvanovSatellite objects into IvanovFormationFlight
%_____________________________________________________________________

%% Set paths and MATLAB parameters

warning on verbose;
delete(gcp('nocreate'));
close all; clear all; clc; %#ok<CLALL>

% Inform the name of this file without the extension "m".
THIS_FILE_NAME = 'run';

if(~isdeployed)
	
	% Get directory path of the active file in MATLAB's Editor.
	[filepath,~,~] = fileparts(matlab.desktop.editor.getActiveFilename);
	addpath(filepath); % Add file path to the current MATLAB path.
	
	% Get directory path of the file name set in THIS_FILE_NAME.
	[filepath,~,~] = fileparts(which(THIS_FILE_NAME));
	addpath(filepath); % Add file path to the current MATLAB path.
	
	% Change working directory to the directory of this m-file.
	cd(filepath);
	
end

%% Set parameters for the simulation

% - Struct of parameters:
%   NumSatellites    : Total number of satellites in the formation.
%   FormationMode    : Mode for the satellites formation flight.
%   Altitude         : Height above sea level [m].
%   AutoResponse     : If satellite should send responses [bool].
%   AvailableGPS     : GPS availability [bool].
%   AvailableTLE     : TLE availability [bool].
%   MaxNumOrbits     : Maximum number of orbits to run.
%   OrbitSectionSize : Size of each orbit section [deg].
%   InitIDX          : Initial idx.
%   AccelFactor      : Acceleration factor for the simulation.
parameters = struct( ...
	'NumSatellites'   , 4     , ...
	'FormationMode'   , 1     , ...
	'Altitude'        , 340000, ...
	'AutoResponse'    , true  , ...
	'AvailableGPS'    , true  , ...
	'AvailableTLE'    , false , ...
	'MaxNumOrbits'    , 10    , ...
	'OrbitSectionSize', 2     , ...
	'InitIDX'         , 120   , ...
	'AccelFactor'     , 100000 );

% Instantiate a simulation object with the selected parameters.
sim = CosmosSimulation(parameters);

%% Start simulation proccess

% Initiate simulation.
sim.start();

% Create global alias for the array of satellites.
sat = sim.Satellites; % Aliases: sat(1) to sat(n).

% Create global alias for the array of orbits.
orbit = sim.Orbits; % Aliases: orbit(1) to orbit(n).

% Create global alias for the array of flight control modules.
fc = sim.FlightControlModules; % Aliases: fc(1) to fc(n).

% Create global alias for the array of GPS modules.
gps = sim.GPSModules; % Aliases: gps(1) to gps(n).

% Save current MATLAB workspace variables.
warning off parallel:lang:spmd:CompositeSave;
workspaceFileName = 'workspace.mat';
save(fullfile(filepath, workspaceFileName));

% Print custom objects and classes used.
sim.createListCustomClasses(filepath, workspaceFileName);

fprintf('\nDone.\n\n');
