function    uml2svg( varargin )
% m2uml.uml2web displays an UML Class Diagram in the Matlab Web Browser.
%
% Syntax: 
%       m2uml.uml2web                                   ...
%               (   'PlantUmlScript', plantuml_script   ... required
%               ,   'PlantUmlJar'   , plantuml_jar      ... optional
%               ); 
%
% Input Parameters:
%       plantuml_script PlantUML script
%       plantuml_jar    full filespec of the PlantUML compiled Jar
% 
% Output:
%       A svg-file containing the class diagram in the same folder as the PLantUML script
%
% Examples:
%     m2uml.uml2svg('PlantUmlScript','h:\m\PiaRepos\m2uml\temp.uml')
%
% Wishlist:
    
    plantuml_jar = 'c:\_MyPrg\PlantUML\plantuml.jar';
    ipp = InputPreprocessor( {
        3 'PlantUmlScript'  nan             {'char'}    {'FileExist'}
        3 'PlantUmlJar'     plantuml_jar    {'char'}    {'FileExist'}
        } );
    ipv = ipp.parse( varargin{:} );
   
    cmd_str = strjoin({'java -jar',ipv.PlantUmlJar,ipv.PlantUmlScript,'-tsvg'}, ' ' );

    [st,msg] = system( cmd_str );
    if st == 0
        [folder,file,~] = fileparts( ipv.PlantUmlScript );
        filespec        = fullfile( folder, [file,'.svg'] );
        fprintf( 'Created: %s\n', filespec )
    else
        error( 'm2uml:uml2web:PlantUMLFailed', 'PlantUML failed: %s', msg )
    end
end
