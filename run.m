%% File to run Cosmos software.
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


%% Set paths and MATLAB parameters

warning on verbose;
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
	
	% Add lib folder to the current MATLAB path.
	current_path = path;
	path(current_path,strcat('.',filesep,'lib',filesep));
	
end


%% Set parameters for the simulation

% - Struct of parameters:
%   NumSatellites    : Total number of satellites in the formation.
%   FormationMode    : Mode for the satellites formation flight.
%   Altitude         : Height above sea level [m].
%   AvailableGPS     : GPS availability [true/false].
%   AvailableTLE     : TLE availability [true/false].
%   MaxNumOrbits     : Maximum number of orbits to run.
%   OrbitSectionSize : Size of each orbit section [deg].
%   InitIDX          : Initial idx.
%   AccelFactor      : Acceleration factor for the simulation.
parameters = struct( ...
	'NumSatellites'   , 4     , ...
	'FormationMode'   , 1     , ...
	'Altitude'        , 340000, ...
	'AvailableGPS'    , false , ...
	'AvailableTLE'    , false , ...
	'MaxNumOrbits'    , 10    , ...
	'OrbitSectionSize', 2     , ...
	'InitIDX'         , 120   , ...
	'AccelFactor'     , 10000 );

% Instantiate a simulation object with the selected parameters.
sim = Simulation(parameters);

% Create aliases for the satellites.
sat = sim.Satellites; % Aliases: sat(1) to sat(n).

% Create aliases for the orbits.
orbit = sim.Orbits; % Aliases: orbit(1) to orbit(n).

% Create aliases for the flight control modules.
fc = sim.FlightControlModules; % Aliases: fc(1) to fc(n).


%% Start simulation proccess

% Initiate simulation.
sim.start();

% Obtain custom objects and classes used.















%% Custom objects and classes used

% Set MATLAB classes to ignore.
classesToIgnore = {'Composite',...
                   'parallel.Pool',...
                   'parallel.pool.DataQueue'};

% Save current MATLAB workspace variables.
warning off parallel:lang:spmd:CompositeSave;
save(fullfile(filepath,'workspace.mat'));

% Get variables from saved workspace.
varsWorkspace = who('-file',fullfile(filepath,'workspace.mat'));
varsLength = length(varsWorkspace);

% Set empty cell array for object names.
% objectNames = {};
objectNames = cell(varsLength,1);

% Set empty cell array for class names.
% classNames = {};
classNames = cell(varsLength,1);

% Set counter for number of custom objects found.
objCounter = 0;

% Go through all variables, one by one.
for varnum = 1 : varsLength
	
	objectName = varsWorkspace{varnum};
	className = class(eval(objectName));
	
	% Check if variable is a class object.
	if isobject(eval(objectName)) && ...
	   ~any(strcmp(classesToIgnore,className))
		
		% Increment counter.
		objCounter = objCounter + 1;
		
		% Add object and class names to cell array.
		objectNames{objCounter} = objectName;
		classNames{objCounter} = className;
		
	end
	
end

if objCounter > 0
	
	% Remove empty cells from cell arrays.
	index = cellfun(@isempty,objectNames) == 0;
	objectNames = objectNames(index);
	classNames = classNames(index);
	
	% Print variable names and their respective classes.
	fprintf('\nCustom objects and respective classes:\n\n');
	objectNames = pad(objectNames,'left');
	for n = 1 : objCounter
		fprintf('%s : %s\n',objectNames{n},classNames{n});
	end
	
	% Save only class names into file.
	fid = fopen(fullfile(filepath,'lib','listCustomClasses'),'w');
	fprintf(fid,'%s\n',classNames{:});
	fclose(fid);
	
else
	fprintf('\nNo custom object classes found.\n');
end









fprintf('\nDone.\n\n');
