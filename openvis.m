%% File to open visualization for Cosmos Beta in MATLAB Simulink

%% Set parameters
warning on verbose;
delete(gcp('nocreate'));
close all; clc; % Do not clear variables, it makes the project unstable.

% Set parameter to automatically run Simulink visualization.
AUTORUN = 1; % [true: 1 | false: 0]

% Inform the name of this file without the extension "m".
THIS_FILE_NAME = 'openvis';

% Inform the name of the project file for the Cosmos simulation.
PROJECT_FILE_NAME = 'cosmosVisualization'; % Without extension 'prj'.
PROJECT_FOLDER = 'visualization';

% Files with coordinates data for satellites.
%coordfiles = {'sat1LLR'};
%coordfiles = {'sat1LLR','sat2LLR','sat3LLR','sat4LLR'};
%coordfiles = {'sat1_LLR_PYR','sat2_LLR_PYR','sat3_LLR_PYR','sat4_LLR_PYR'};
coordfiles = {'LLR_sat_1','LLR_sat_2','LLR_sat_3','LLR_sat_4'};

% Inclination for the satellite orbits, in radians.
inclination = pi/2;

%% Set paths
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

% Define satellite struct.
simsat(1).lat = struct('time',0,'signals',struct('dimensions',0,'values',0));
simsat(1).long = struct('time',0,'signals',struct('dimensions',0,'values',0));
simsat(1).sma = struct('time',0,'signals',struct('dimensions',0,'values',0));
simsat(1).pos = struct('time',0,'signals',struct('dimensions',0,'values',0));
simsat(1).inc = struct('time',0,'signals',struct('dimensions',0,'values',0));
simsat(1).rot = struct('time',0,'signals',struct('dimensions',0,'values',0));
simsat(1).pitch = struct('time',0,'signals',struct('dimensions',0,'values',0));
simsat(1).yaw = struct('time',0,'signals',struct('dimensions',0,'values',0));
simsat(1).roll = struct('time',0,'signals',struct('dimensions',0,'values',0));

% Allocate memory for array of satellites.
numsats = length(coordfiles);
simsat = repmat(simsat(1),numsats,1);

for n = 1:numsats
    coord = readmatrix(coordfiles{n});
    timestamps = coord(:,1); % [seconds]
    latDeg = coord(:,2); % [degrees]
    longDeg = coord(:,3); % [degrees]
    smaKm = coord(:,4); % [km]
    pitch = coord(:,5); % [degrees]
    yaw = coord(:,6); % [degrees]
    roll = coord(:,7); % [degrees]
    
    % Convert data to SI units
    latRad = latDeg * (pi/180); % [rad]
    longRad = longDeg * (pi/180); % [rad]
    smaMeters = smaKm * 1000; % [m]
    pitch = pitch * (pi/180); % [rad]
    yaw = yaw * (pi/180); % [rad]
    roll = roll * (pi/180); % [rad]
    
    % Place data into satellite struct.
    simsat(n).lat.time = timestamps;
    simsat(n).lat.signals.dimensions = 1;
    simsat(n).lat.signals.values = latRad;
    
    simsat(n).long.time = timestamps;
    simsat(n).long.signals.dimensions = 1;
    simsat(n).long.signals.values = longRad;
    
    simsat(n).sma.time = timestamps;
    simsat(n).sma.signals.dimensions = 1;
    simsat(n).sma.signals.values = smaMeters;
    
    dataLength = length(timestamps);
    simsat(n).pos.time = timestamps;
    simsat(n).pos.signals.dimensions = 3;
    x = zeros(dataLength,1);
    y = zeros(dataLength,1);
    z = zeros(dataLength,1);
    simsat(n).pos.signals.values = [x y z];
    
    simsat(n).inc.time = timestamps;
    simsat(n).inc.signals.dimensions = 1;
    simsat(n).inc.signals.values = zeros(dataLength,1);
    
    simsat(n).rot.time = timestamps;
    simsat(n).rot.signals.dimensions = 4;
    simsat(n).rot.signals.values = zeros(dataLength,4);
    
    simsat(n).pitch.time = timestamps;
    simsat(n).pitch.signals.dimensions = 1;
    simsat(n).pitch.signals.values = pitch;
    
    simsat(n).yaw.time = timestamps;
    simsat(n).yaw.signals.dimensions = 1;
    simsat(n).yaw.signals.values = yaw;
    
    simsat(n).roll.time = timestamps;
    simsat(n).roll.signals.dimensions = 1;
    simsat(n).roll.signals.values = roll;
end

% Get last timestamp of the time vector, set it as simulation time.
stopTime = simsat(1).lat.time(end);

% Check length of lat and long vectors.
dataLength = length(simsat(1).lat.time);

% Get each pair of lat-long for each satellite.
for i = 1:dataLength
    for n = 1:numsats
        
        % Get current values for the lat-long pair.
        lat = simsat(n).lat.signals.values(i);
        long = simsat(n).long.signals.values(i);
        sma = simsat(n).sma.signals.values(i);
        
        % From latitude-longitude, calculate position in ECEF.
        base = sma * cos(lat);
        z = sma * sin(lat);
        x = base * cos(long);
        y = base * sin(long);
        simsat(n).pos.signals.values(i,1) = x;
        simsat(n).pos.signals.values(i,2) = y;
        simsat(n).pos.signals.values(i,3) = z;
        
        % -----------------------------------------------------------------
        % Method 1 (more complex, stop here, implement Method 2)
        % For each pair of lat-long, compute vector to center of Earth.
        % Start with vector1 = [1 0 0].
        
        % Rotate on ECEF's Z-axis with angle = longitude.
        % Outputs rotated vector2.
        
        % Compute ortogonal vector between vector2 and Z-axis positive.
        % Ortogonal vector must be the rotation axis for vector2 to meet Z+.
        % Check it.
        
        % Compute rotation matrix on ortogonal vector with angle = latitude.
        % Use Rodrigues' rotation equations.
        
        % Use rotation matrix on vector2.
        % Outputs vector3.
        % -----------------------------------------------------------------
        
        % Method 2: Pseudo-code here, implementation has been changed below
        % For each pair of lat-long, compute vector to center of Earth.
        % Initial vector is [SMA, 0, 0].
        % Normalize vector to start with vector0 = [1 0 0].
        
        % Rotate to set initial attitude:
        %   - payload to Nadir, and
        %   - wings perpendicular to Equator line.
        % Output vector1.
        
        % Rotate on ECEF's Y-axis with angle -latitude.
        % Output vector2.
        
        % Rotate on ECEF's Z-axis with angle +longitude.
        % Output vector3.
        
        % Compute Rodrigues' matrix for rotation around vector3.
        % Use Rodrigues' matrix with two different angles.
        % Case 1: angle = +orbit_inclination
        % Case 2: angle = -orbit_inclination
        
        % If the lat-long point is in the ascending portion of the orbit, the 
        % inclination will be positive.
        % If the lat-long point is in the descending portion of the orbit, the 
        % inclination will be negative.
        
        % Compute the derivative of the latitude.
        % If derivative is positive, orbit is ascending.
        % If derivative is negative, orbit is descending.
        
        % Therefore,
        % Derivative+ : ascending : angle = +orbit_inclination
        % Derivative- : ascending : angle = -orbit_inclination
        % -----------------------------------------------------------------
        
        % Rotate to set initial attitude:
        %   - payload pointing to Nadir, and
        %   - wings perpendicular to Equator line.
        % To correct orientation of the 3D satellite to initial attitude,
        % rotate -90deg (-pi/2) on ECEF's Y-axis.
        a = -pi/2;
        rot = [cos(a/2), 0, sin(a/2), 0]; % [quaternion]
        
        % For each pair of lat-long, compute vector to center of Earth.
        % Initial vector is [SMA, 0, 0].
        % Normalize vector to start with vector0 = [1 0 0].
        vector1 = [1 0 0];
        localYaw = [1 0 0];
        localPitch = [0 0 1];
        localRoll = [0 1 0];
        
        % -----------------------------------------------------------------
        % Correct for orbit inclination.
        
        % If the lat-long point is in the ascending portion of the orbit, the 
        % inclination will be positive.
        % If the lat-long point is in the descending portion of the orbit, the 
        % inclination will be negative.
        
        % Compute the derivative of the latitude.
        % If derivative is positive, orbit is ascending.
        % If derivative is negative, orbit is descending.
        
        % Check for positive or negative change in latitude.
        if i > 1
            lat_before = simsat(n).lat.signals.values(i-1);
            lat_now = simsat(n).lat.signals.values(i);
            diff = lat_now - lat_before;
        else
            diff = 0;
        end
        
        % Example A:
        % If lat_now = 0, lat_before = -1,
        % diff = +1,
        % diff positive -> latitude increasing, ascending portion of the orbit
        % latitude increasing -> use positive orbit inclination for roll
        
        % Example B:
        % If lat_now = 85, lat_before = 86,
        % diff = -1,
        % diff negative -> latitude decreasing, descending portion of the orbit
        % latitude decreasing -> use negative orbit inclination for roll
        
        if diff < 0
            inclinationToUse = -inclination;
        else
            inclinationToUse = inclination;
        end
        
        a = inclinationToUse;
        rot1 = [cos(a/2), sin(a/2), 0, 0]; % [quaternion]
        % Update cumulative quaternion rotation.
        rot = quatmultiply(rot1, rot);
        % Update locals.
        localYaw = quatrotate(rot1, localYaw);
        localPitch = quatrotate(rot1, localPitch);
        localRoll = quatrotate(rot1, localRoll);
        
        % Rotate on local yaw, currently on ECEF's X-axis.
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Try this:
        %  initial attitude
        %  orbit inclination on ECEF-X
        %  pitch angle on localPitch
        %  yaw angle on ECEF-X
        %  -latitude on ECEF-Y
        %  longitude on ECEF-Z
        %  roll angle on localRoll
%         a = simsat(n).yaw.signals.values(i);
%         rotYaw = [cos(a/2), sin(a/2), 0, 0]; % [quaternion]
%         % Update quaternion rotation.
%         rot = quatmultiply(rotYaw, rot);
        
        % -----------------------------------------------------------------
        
        % Rotate on ECEF's Y-axis with angle -latitude.
        % Output vector2.
        a = -lat;
        rot2 = [cos(a/2), 0, sin(a/2), 0]; % [quaternion]
        vector2 = quatrotate(rot2, vector1);
        % Update cumulative quaternion rotation.
        rot = quatmultiply(rot2, rot);
        % Update locals.
        localYaw = quatrotate(rot2, localYaw);
        localPitch = quatrotate(rot2, localPitch);
        localRoll = quatrotate(rot2, localRoll);
        
        % Rotate on ECEF's Z-axis with angle +longitude.
        % Output vector3.
        a = long;
        rot3 = [cos(a/2), 0, 0, sin(a/2)]; % [quaternion]
        vector3 = quatrotate(rot3, vector2);
        % Update cumulative quaternion rotation.
        rot = quatmultiply(rot3, rot);
        % Update locals.
        localYaw = quatrotate(rot3, localYaw);
        localPitch = quatrotate(rot3, localPitch);
        localRoll = quatrotate(rot3, localRoll);
        
        % -----------------------------------------------------------------
        % Vector from Earth center to satellite location -> vector3
        % -----------------------------------------------------------------
        % Compute Rodrigues matrices here.
        % References:
        % https://math.stackexchange.com/questions/142821/matrix-for-rotation-around-a-vector
        % https://mathworld.wolfram.com/RodriguesRotationFormula.html
        
        % Pitch angle around localPitch.
        u = localPitch; % rotation matrix will be around u, must be normalized
        a = simsat(n).pitch.signals.values(i);
        W = [  0  -u(3)  u(2);
             u(3)   0   -u(1);
            -u(2)  u(1)   0 ];
        I = eye(3); % identity matrix 3x3
        rodriguesRotMatrix = I + sin(a)*W + (2*sin(a/2)^2)*(W^2);
        % Convert Rodrigues rotation matrix to quaternions.
        rotPitch = rotm2quat(rodriguesRotMatrix);
        % Update cumulative quaternion rotation.
        rot = quatmultiply(rotPitch, rot);
        % Update locals.
        localYaw = quatrotate(rotPitch, localYaw);
        localPitch = quatrotate(rotPitch, localPitch);
        localRoll = quatrotate(rotPitch, localRoll);
        
        % Yaw angles around vector3.
        u = vector3; % rotation matrix will be around u, must be normalized
        a = simsat(n).yaw.signals.values(i);
        W = [  0  -u(3)  u(2);
             u(3)   0   -u(1);
            -u(2)  u(1)   0 ];
        I = eye(3); % identity matrix 3x3
        rodriguesRotMatrix = I + sin(a)*W + (2*sin(a/2)^2)*(W^2);
        % Convert Rodrigues rotation matrix to quaternions.
        rotYaw = rotm2quat(rodriguesRotMatrix);
        % Update cumulative quaternion rotation.
        rot = quatmultiply(rotYaw, rot);
        % Update locals.
        localYaw = quatrotate(rotYaw, localYaw);
        localPitch = quatrotate(rotYaw, localPitch);
        localRoll = quatrotate(rotYaw, localRoll);
        
        % Roll angle around localRoll.
        u = localRoll; % rotation matrix will be around u, must be normalized
        a = simsat(n).roll.signals.values(i);
        W = [  0  -u(3)  u(2);
             u(3)   0   -u(1);
            -u(2)  u(1)   0 ];
        I = eye(3); % identity matrix 3x3
        rodriguesRotMatrix = I + sin(a)*W + (2*sin(a/2)^2)*(W^2);
        % Convert Rodrigues rotation matrix to quaternions.
        rotRoll = rotm2quat(rodriguesRotMatrix);
        % Update cumulative quaternion rotation.
        rot = quatmultiply(rotRoll, rot);
        % Update locals.
        localYaw = quatrotate(rotRoll, localYaw);
        localPitch = quatrotate(rotRoll, localPitch);
        localRoll = quatrotate(rotRoll, localRoll);
        
        % Multiplied all rotation quaternions to get final rotation.
        % Loop to save all elements of the final rotation quaternion.
        for q = 1:4
            simsat(n).rot.signals.values(i,q) = rot(q);
        end
        
    end
end

% Change working directory to the directory of the project file.
cd(fullfile(filepath,PROJECT_FOLDER));

% Open Simulink model and run it.
open_system('asbCubeSat');

% To see all object handles open in MATLAB, enter in Command Window:
% object_handles = findall(groot)
% To find object handle of the figure window for 3D visualization, enter
% in Command Window:
% findall(groot, 'Name', 'COSMOS Visualization')

if AUTORUN
    % Try to get handle of the figure window for 3D visualization.
    cosmosVisHandle = findall(groot, 'Name', 'COSMOS Visualization');
    if isempty(cosmosVisHandle)
        % If handle is empty, means that the figure is closed.
        % Open figure.
        open('cosmosSimulation.x3d');
        cosmosVisHandle = findall(groot, 'Name', 'COSMOS Visualization');
        % Find VRSimMenu in cosmosVisHandle.Children(5)
        % Find submenus in cosmosVisHandle.Children(5).Children(1) to (3)
    else
        % If handle is found, figure is already open. Bring it to front.
        figure(cosmosVisHandle);
    end
    % Start Simulink visualization.
    sim('asbCubeSat',stopTime);
end
