function uml()
%% Generate PlantUML code for COSMOS software.
%_____________________________________________________________________
%
% Function uml:
%
% Detailed explanation goes here.
%_____________________________________________________________________

% Get directory of this matlab file.
[filepath,~,~] = fileparts(mfilename('fullpath'));

% Change working directory to the directory of this m-file.
cd(filepath);

% Add m2uml and lib folders to the current MATLAB path.
addpath(strcat('.',filesep,'m2uml',filesep));
addpath(strcat('.',filesep,'lib',filesep));

% Import package m2uml with all its classes and functions.
import m2uml.*

fprintf('Generating code for UML diagram...\n\n');

% Notes on how to set relations between classes:
% - Association occurs when two classes in a model need to ...
%   communicate with each other; it is represent by the connector ...
%   '-->' in which the direction of the arrow indicates the ...
%   navigation direction; in case an arrow is on both sides, the ...
%   association is known as a bidirectional association.
% - Aggregation and Composition both imply that the object of one ...
%   class owns the object of another class.
% - Aggregation implies a relationship where the child can exist ...
%   independently of the parent; if the parent class is deleted, ...
%   the child class still exists; it is represented by the ...
%   connector 'o--' in PlantUML.
% - Composition implies a relationship where the child cannot ...
%   exist independently of the parent; if the parent class is ...
%   deleted, the child class cannot exist alone; it is represented ...
%   by the connector '*--' in PlantUML.

% Run tool m2uml.
[~] = m2uml.run('CosmosFS', ...
	{ ...
		'Main', ...
		'IvanovFormationFlight', ...
		'CosmosSimulation', ...
		'Orbit', ...
		'IvanovSatellite' ...
	} , { ...
		'Main "1" o-- "1" IvanovFormationFlight', ...
		'Main "1" *-- "0..1" CosmosSimulation', ...
		'IvanovFormationFlight "1" o-- "1..*" IvanovSatellite', ...
		'IvanovFormationFlight "1" o-- "1" Orbit'
	} ...
);

% Get name of the current active branch on Git.
text = fileread('.git/HEAD');
parsed = textscan(text,'%s');
if ~strcmp(parsed{1}{1},'ref:') || ~length(parsed{1})>1
	% HEAD is not in the expected format.
	fprintf(2,'Error in format of the file .git/HEAD\n');
	return
else
	path = parsed{1}{2};
	[~,branchName,~] = fileparts(path);
	fprintf([ ...
		'Active git branch ''%s'' will be stashed.\n',...
		'Its latest state will be recovered later.\n'],...
		branchName);
	!git stash push
end

% Upload file 'temp.uml' to GitHub on branch 'uml-output'.
fprintf('Now uploading UML output to branch ''uml-output''...\n\n');
!git checkout -B uml-output
!git add -f temp.uml
!git commit -m "Generated new UML diagram"
!git push -u origin uml-output

% Return to original git branch.
% originalGitBranch="master"
% git checkout "$originalGitBranch"
setenv('originalGitBranch',branchName);
!git checkout "$originalGitBranch"
!git stash pop
fprintf('\nReturned to original branch ''%s''.\n',branchName);

% Set URL to the proxy service of the PlantUML server.
plantProxy = 'http://www.plantuml.com/plantuml/proxy?';

% Set complete URL of the raw document containing the PlantUML code.
src = strcat('https://raw.githubusercontent.com/rodweber/',...
	'beta-cosmos/uml-output/temp.uml');

% Specify the format of the output file (default: png).
fmt = 'png'; % [png], [svg], [eps], [epstext], [txt].

% Use proxy service of the PlantUML server to open UML diagram.
web(strcat(plantProxy,'src=',src,'&fmt=',fmt));

end
