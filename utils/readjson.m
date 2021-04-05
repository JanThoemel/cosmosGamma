function configStruct = readjson(configFileName)
%READJSON Function to read a JSON configuration file into a struct
%   Detailed explanation goes here

fid = fopen(configFileName,'r');
configStruct = jsondecode(fscanf(fid,'%s'));
fclose(fid);

end
