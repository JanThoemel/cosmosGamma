%% File to run Cosmos software

% JT Notes
% this.SolarFactor,this.WindFactor, this.SatelliteMass ,this.Panels,
%   this.SurfacePanel,this.SurfaceRef can be found in FlightControl
% desired values are in FlightControl
% initial conditions are in Satellite.initialize
% parameters for riccati equation can be found in riccatiequation

%% Set paths and MATLAB parameters
warning on verbose;
delete(gcp('nocreate'));
close all; clear all; clc; %#ok<CLALL>

% Inform the name of this file without the extension "m".
THIS_FILE_NAME = 'runCosmosBeta';

if(~isdeployed)
	% Get directory path of the active file in MATLAB's Editor.
	[filepath,~,~] = fileparts(matlab.desktop.editor.getActiveFilename);
	addpath(filepath); % Add file path to the current MATLAB path.
	
	% Get directory path of the file name set in THIS_FILE_NAME.
	[filepath,~,~] = fileparts(which(THIS_FILE_NAME));
	addpath(filepath); % Add file path to the current MATLAB path.
  addpath(strcat(filepath,filesep,'utils'));
	
	% Change working directory to the directory of this m-file.
	cd(filepath);
end

%% Read parameters from configuration files
% Read and set initial condition parameters from configuration files.
% To change a parameter's value, open the respective JSON file and modify it.
configSim   = readjson('configSimulation.json');
configFF    = readjson('configFormationFlight.json');
configOrbit = readjson('configOrbit.json');
configSats  = readjson('configSatellites.json');
configVis   = readjson('configVisualization.json');

%% Instantiate a simulation object
% Do not use 'sim' as variable name. It is a reserved name in Simulink.
csim = CosmosSimulation();

%% Start simulation
csim.startSimulation();

%% Set global object aliases for autonomous documentation generation
sat   = csim.Satellites; % Aliases: sat(1) to sat(n).
orbit = csim.Orbits; % Aliases: orbit(1) to orbit(n).
fc    = csim.FlightControlModules; % Aliases: fc(1) to fc(n).
gps   = csim.GPSModules; % Aliases: gps(1) to gps(n).

%% Post-processing and plotting methods
% Use a Kepler propagator to compute ECEF coordinates
csim.ECEFprocessing(...
  configOrbit.InitOrbitAltitude,...
  configOrbit.OrbitInclinationDegrees,...
  configOrbit.RAAN,...
  configVis.VizScale,...
  configVis.KeplerStepSize,...
  configVis.V0,...
  configVis.PlotLatLonIn2D,...
  configVis.WriteLLRRPYData);

% Compute the location of the specular point for the GNSS-reflectometry method
if(configSim.EnableGNSSRProcessing)
  csim.GNSSRprocessing(csim.NumSatellites, orbit(1).MeanEarthRadius);
end

% Plot and visualize results
if(configSim.EnablePlotting)
  csim.plotting(csim.NumSatellites, orbit(1).MeanMotionRad);
end

%% Save data for autonomous documentation generation
% Save current MATLAB workspace variables.
warning off parallel:lang:spmd:CompositeSave;
workspaceFileName = 'workspace.mat';
save(fullfile(filepath, workspaceFileName));
% Print custom objects and classes used.
csim.createListCustomClasses(filepath, workspaceFileName);

fprintf('\nDone.\n\n');
