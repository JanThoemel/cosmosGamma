% Set MATLAB parameters.
warning on verbose;
delete(gcp('nocreate'));

NUMBER_WORKERS = 36;

% Set start time of script.
timeStartScript = posixtime(datetime('now')); % Posixtime [seconds].

% Create a cluster object in your workspace according to the specified profile.
c = parcluster('local');
c.NumWorkers = NUMBER_WORKERS;

% Create data queue for parallel pool.
dq = parallel.pool.DataQueue;

% Define function to call when new data is received on the DataQueue.
afterEach(dq, @disp);

% Create and return pool with the specified number of workers.
parpool(NUMBER_WORKERS);

% Set the start time for the parallel pool.
timeStartPool = posixtime(datetime('now')); % Posixtime [seconds].

% Execute parallel code on workers of parallel pool.
spmd(NUMBER_WORKERS)
  % For DEBUGGING mode:
  % 1. Comment the spmd command above and its end line.
  % 2. Set variable uid = 1, instead of default uid = labindex.
  
  % Set a Unique Identifier (UID) for each of the satellites, from 1 to N.
  % Create UIDs as aliases to labindex for future compatibility with C++ and to
  % increase code readability and maintainability with shorter code lines.
  uid = labindex;
  
  send(dq,['Worker ',num2str(uid),' says hello!']);
  
end % Parallel code.

% Terminate the existing parallel pool session.
delete(gcp('nocreate'));

% Calculate the execution time of the parallel pool.
timeEndPool = posixtime(datetime('now')); % Posixtime [seconds].
timeDurationPool = timeEndPool - timeStartPool;
fprintf('Total parallel runtime: %s seconds.\n',num2str(timeDurationPool));

% Calculate the execution time of this script.
timeEndScript = posixtime(datetime('now')); % Posixtime [seconds].
timeDurationScript = timeEndScript - timeStartScript;
fprintf('Total script runtime: %s seconds.\n',num2str(timeDurationScript));

msgfig = msgbox('Simulation Completed','MATLAB Info','help','modal');
uiwait(msgfig);
