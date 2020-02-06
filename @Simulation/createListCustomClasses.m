function createListCustomClasses(filepath)
%% Create list of custom classes used in COSMOS.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

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
		fprintf(' %s : %s\n',objectNames{n},classNames{n});
	end
	
	% Save only class names into file.
	fid = fopen(fullfile(filepath,'docs','custom-classes.txt'),'w');
	fprintf(fid,'%s\n',classNames{:});
	fclose(fid);
	
else
	fprintf('\nNo custom object classes found.\n');
end

end % Function createListCustomClasses.
