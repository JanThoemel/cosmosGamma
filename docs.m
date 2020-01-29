function docs()
%% Open documentation for custom classes in COSMOS software.
%_____________________________________________________________________
%
% Function docs:
%
% Detailed explanation goes here.
%_____________________________________________________________________

% Get directory of this matlab file.
[filepath,~,~] = fileparts(mfilename('fullpath'));

% Add lib folder to the current MATLAB path.
current_path = path;
path(current_path,strcat('.',filesep,'lib',filesep));

fid = fopen(fullfile(filepath,'lib','listCustomClasses'));
classNames = textscan(fid,'%s');
fclose(fid);

% Open documentation for each custom class.
for c = 1 : length(classNames{1})
	doc (classNames{1}{c});
end

end
