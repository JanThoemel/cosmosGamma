function docs(varargin)
%% Open documentation for custom classes in COSMOS software.
%_____________________________________________________________________
%
% Function docs:
%
% Detailed explanation goes here.
%_____________________________________________________________________

% Set file names to publish, without extension "m".
filesToPub = { ...
	'run'
};

% Get directory of this matlab file.
[filepath,~,~] = fileparts(mfilename('fullpath'));

% Add lib folder to the current MATLAB path.
current_path = path;
path(current_path,strcat('.',filesep,'lib',filesep));

% Parse optional input arguments:
% - Inputs that you add with addRequired or addOptional are ...
%   positional arguments. When you call a function with positional ...
%   inputs, specify those values in the order they are added to ...
%   the parsing scheme.
% - Inputs added with addParameter are not positional, so you can ...
%   pass values for one parameter before another. ...
%   However, parameter value inputs require that you pass the ...
%   input name (e.g. 'publish') along with the value of the input.
% - Examples of validation functions:
%   @isstring
%   @(x) any(validatestring(x,{'publish'}))

modeDefault = 'openOnly';
modeOptions = {'publish'};

% Set parser.
p = inputParser;
addOptional(p,'mode',modeDefault,...
	@(x) any(validatestring(x,modeOptions)));

% Run parser.
parse(p,varargin{:});

% Get parser results.
mode = p.Results.mode;

% Check for parameter 'publish'.
try
	
	% Validate string.
	validatestring(mode,modeOptions(1));
	
	% Set options to publish documentation.
	options = struct('format','html',... % [html], [pdf].
	                 'outputDir',fullfile(filepath,'doc'));
	
	% Publish documentation in previously specified folder.
	publish(strcat(filesToPub{1},'.m'),options);
	
	% Open published documentation.
	if strcmp(options.format,'html')
		web(strcat('doc',filesep,filesToPub{1},'.',options.format));
	else
		winopen(strcat('doc',filesep,filesToPub{1},'.',options.format));
	end
	
catch
	
	fid = fopen(fullfile(filepath,'lib','listCustomClasses'));
	classNames = textscan(fid,'%s');
	fclose(fid);
	
	% Open documentation for each custom class.
	for c = 1 : length(classNames{1})
		doc (classNames{1}{c});
	end
	
end

end
