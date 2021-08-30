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

% Check Git installation.
[status, result] = system('git status');
if status ~= 0
  fprintf('MATLAB has found the following error:\n');
  fprintf(2,'Error #%d - %s\n', status, result);
  fprintf([ ...
		'If you are using Windows, download and install Git from:\n',...
		'https://git-scm.com/downloads\n',...
    'Use the default recommended settings for Git installation.\n',...
    '\n',...
    'Your Git installation should be, by default, in the directory:\n',...
    'C:\\Program Files\\Git\n',...
    '\n',...
    'Then, follow the steps below to modify the Windows PATH variable:\n',...
    '1. In the Windows search bar, search for \"environment variable\".\n',...
    '2. Select \"Edit the system environment variables\".\n',...
    '3. Click the \"Environment Variables...\" button at the bottom.\n',...
    '4. Double-click the \"Path\" entry under \"System variables\".\n',...
    '5. Click on the \"New\" button in the PATH editor and add:\n',...
    '   C:\\Program Files\\Git\\bin\n',...
    '   C:\\Program Files\\Git\\cmd\n',...
    '6. Close and re-open MATLAB.\n',...
    '\n',...
    'For more information, check:\n',...
    'https://stackoverflow.com/questions/4492979/',...
    'git-is-not-recognized-as-an-internal-or-external-command\n',...
    '\n']);
  return
end

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
% !git push -f -u origin HEAD:out

% Merge the previous active branch into 'temp-branch'.
% !git merge dev

% Apply stashed changes into 'temp-branch'.
!git stash apply

% Commit changes.
!git commit -am "Apply changes from stashed state"

fprintf(2,'\nWait for current branch to be updated...\n');
for t = 5:-1:1
	fprintf('%s...\n',num2str(t));
	pause(1);
end

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

% Set filename with current date/time.
umlfile = strcat('tempUML',datestr(now,'yyyymmddHHMMSS'),'.uml');
dateStringNow = datestr(datetime('now'));

% Run tool m2uml.
[~] = m2uml.run('UML Class Diagram for Cosmos Software', umlfile, ...
	{
		'CosmosSimulation', ...
		'Satellite', ...
		'FlightControl', ...
		'Orbit', ...
		'Navigation', ...
		'Communication'
	} , {
		'CosmosSimulation "1" --> "1..*" Satellite', ...
		'Satellite "1" *-- "1" FlightControl', ...
		'Satellite "1" *-- "1" Orbit', ...
		'Satellite "1" *-- "1" Navigation', ...
		'Satellite "1" *-- "1" Communication'
	} ...
);

% Close UML file in MATLAB editor.
matlab.desktop.editor.findOpenDocument('tempUML').close();

% Append date/time to UML file.
% In PlantUML, a single quote char (') precedes a comment.
fid = fopen(umlfile,'a');
fprintf(fid,'\n'' %s\n',dateStringNow);
fclose(fid);

% Upload UML file to GitHub on branch 'out'.
fprintf('\n');
fprintf(2,'Now uploading UML output to branch ''out''...\n');

% Commit UML diagram file to remote branch.
setenv('umlFileName',umlfile);
if ispc
	!git add -f "%umlFileName%"
else
	!git add -f "$umlFileName"
end
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

fprintf(2,'\nSuccessfully generated UML diagram\n');
fprintf(2,'Wait for connection with PlantUML server...\n');
for t = 9:-1:1
	fprintf('%s...\n',num2str(t));
	pause(1);
end

% Set URL to the proxy service of the PlantUML server.
plantProxy = 'http://www.plantuml.com/plantuml/proxy?';

% Set complete URL of the raw document containing the PlantUML code.
src = strcat('https://raw.githubusercontent.com/rodweber/',...
	'beta-cosmos/out/',umlfile);

% Specify the format of the output file (default: png).
fmt = 'png'; % [png], [svg], [eps], [epstext], [txt].

% Use proxy service of the PlantUML server to open UML diagram.
web(strcat(plantProxy,'src=',src,'&fmt=',fmt));

fprintf('\nDone.\n\n');

end % Function openuml.
