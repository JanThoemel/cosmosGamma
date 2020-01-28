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

fid = fopen(fullfile(filepath,'lib','listCustomClasses'));
classNames = textscan(fid,'%s\n');
fclose(fid);

for c = 1 : length(classNames{1})
	% Open documentation for each custom class.
	doc (classNames{1}{c});
end

end
