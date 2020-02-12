function openuml()
%% Generate PlantUML code and open class diagram for Cosmos software.
%_____________________________________________________________________
%
% Details here.
%_____________________________________________________________________

% Get directory of this matlab file.
[filepath,~,~] = fileparts(mfilename('fullpath'));

% Change working directory to the directory of this m-file.
cd(filepath);

% Add m2uml folder to the current MATLAB path.
addpath(strcat('.',filesep,'m2uml',filesep));

% Import package m2uml with all its classes and functions.
import m2uml.*

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
	fprintf(2,[ ...
		'Active git branch ''%s'' will be stashed\n',...
		'Its latest state will be recovered later...\n'],...
		branchName);
	% Clear stash list and stash current active branch.
	!git stash clear
	!git stash push
end

% Checkout branch 'out' and reset its latest commit.
% !git checkout -B out && git reset --hard HEAD^

% Delete local branch 'temp-branch'.
!git branch -D temp-branch

% Create and checkout new branch 'temp-branch'.
!git checkout -B temp-branch

% Force-push the new HEAD commit to the remote branch.
% !git push -u origin out +HEAD
!git push -f -u origin HEAD:out

% Merge the previous active branch into 'temp-branch'.
% !git merge dev

% Apply stashed changes into 'temp-branch'.
!git stash apply

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

fprintf('\n');
fprintf(2,'Generating code for UML diagram...\n');

% Run tool m2uml.
[~] = m2uml.run('Cosmos', ...
	{
		'Simulation', ...
		'Satellite', ...
		'FlightControl', ...
		'Orbit', ...
		'GPS'
	} , {
		'Simulation "1" --> "1..*" Satellite', ...
		'Satellite "1" *-- "1" FlightControl', ...
		'Satellite "1" *-- "1" Orbit', ...
		'Satellite "1" *-- "1" GPS'
	} ...
);

% Close file 'temp.uml' in MATLAB editor.
matlab.desktop.editor.findOpenDocument('temp.uml').close();

% Append date/time to file 'temp.uml'.
% In PlantUML, a single quote char (') precedes a comment.
fid = fopen('temp.uml','a');
fprintf(fid,'\n'' %s\n',datestr(datetime('now')));
fclose(fid);

% Upload file 'temp.uml' to GitHub on branch 'out'.
fprintf('\n');
fprintf(2,'Now uploading UML output to branch ''out''...\n');

% Commit UML diagram file to remote branch.
!git add -f temp.uml
!git add .
!git commit -m "Update UML diagram"
!git push -f -u origin HEAD:out

% Return to original git branch.
fprintf('\n');
fprintf(2,'Returning to original branch ''%s''...\n',branchName);
setenv('originalGitBranch',branchName);
if ispc
	!git checkout "%originalGitBranch%"
else
	!git checkout "$originalGitBranch"
end
!git stash pop
!git branch -D temp-branch

% Set URL to the proxy service of the PlantUML server.
plantProxy = 'http://www.plantuml.com/plantuml/proxy?';

% Set complete URL of the raw document containing the PlantUML code.
src = strcat('https://raw.githubusercontent.com/rodweber/',...
	'beta-cosmos/out/temp.uml');

% Specify the format of the output file (default: png).
fmt = 'png'; % [png], [svg], [eps], [epstext], [txt].

% Use proxy service of the PlantUML server to open UML diagram.
web(strcat(plantProxy,'src=',src,'&fmt=',fmt));

fprintf('\nDone.\n\n');

end % Function openuml.
