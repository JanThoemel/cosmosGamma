%% File to run simulation for Cosmos Beta in MATLAB Simulink

%% Set paths and MATLAB parameters

warning on verbose;
delete(gcp('nocreate'));
close all; clear all; clc; %#ok<CLALL>

% Inform the name of this file without the extension "m".
THIS_FILE_NAME = 'runCosmosSimulation';
%THIS_FILE_NAME = 'opensim';

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

coord = readmatrix('coordinates');
lat = coord(:,1); % radians
long = coord(:,2); % radians

% Check length of lat and long here.

% Get each pair of lat/long.

    % Set original vector1 as [SMA, 0, 0].
    
    % Correct orientation of the 3D satellite.
    % Rotate 90deg (pi/2) on ECEF's Y-axis.
    
    % Rotate on ECEF's Y-axis with angle -latitude.
    % Output vector2.
    
    % Rotate on ECEF's Z-axis with angle +longitude.
    % Output vector3.
    
    
    
    
    
    
    
    
    
    % Normalize vector1 to values between 0 and 1.
    
    % Rotate on ECEF's Z-axis with angle = longitude.
    % Outputs rotated vector2.
    
    % Compute ortogonal vector between vector2 and Z-axis positive.
    % Ortogonal vector must be the rotation axis for vector2 to meet Z+.
    % Check it.
    
    % Compute rotation matrix on ortogonal vector with angle = latitude.
    % Use Rodrigues' rotation equations.
    
    % Use rotation matrix on vector2.
    % Outputs vector3.
    
    

    % Denormalize vector to values between 0 and SMA.
    

%simulationTime = 20e3; % before: 200e3
%sim('asbCubeSat',simulationTime);
