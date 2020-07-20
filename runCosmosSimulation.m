%% File to run simulation for Cosmos Beta in MATLAB Simulink

%% Set paths and MATLAB parameters

warning on verbose;
delete(gcp('nocreate'));
close all; clear all; clc; %#ok<CLALL>

% Inform the name of this file without the extension "m".
THIS_FILE_NAME = 'runCosmosSimulation';

% Inform the name of the project file for the Cosmos simulation.
PROJECT_FILE_NAME = 'cosmos-simulation'; % Without extension 'prj'.

if(~isdeployed)
	
	% Get directory path of the active file in MATLAB's Editor.
	[filepath,~,~] = fileparts(matlab.desktop.editor.getActiveFilename);
	addpath(genpath(filepath)); % Add file path to the current MATLAB path.
	
	% Get path for directory of the file name set in THIS_FILE_NAME.
	[filepath,~,~] = fileparts(which(THIS_FILE_NAME));
	addpath(genpath(filepath)); % Add file path to the current MATLAB path.
    
    % Get path for directory of the simulation project.
    [projectPath,~,~] = fileparts(which([PROJECT_FILE_NAME,'.prj']));
	
	% Change working directory to the directory of this m-file.
	cd(filepath);
	
end

%% Run Simulink file

% Check if there is any Matlab project already open.
if(isempty(matlab.project.rootProject))
    % If there is no project open, launch project from path.
    proj = openProject(projectPath);
else
    % If there is a project already open, get the Project object.
    proj = currentProject();
    % Check if the name of the project is correct.
    if(~strcmp(proj.Name,PROJECT_FILE_NAME))
        % If name is different, show error.
        error(['Project ''%s'' is already open. ',...
            'Close it before running ''%s''.'], ...
            proj.Name, PROJECT_FILE_NAME);
    else
        % If name is correct, show message.
        fprintf(2,'Project with name ''%s'' already open.\n',proj.Name);
        fprintf('To prevent issues, check if project path is correct.\n');
        fprintf('Project path: %s\n',proj.RootFolder);
    end
end

%simulationTime = 20e3; % before: 200e3
%sim('asbCubeSat',simulationTime);
