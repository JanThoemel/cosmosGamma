function    uml2web( varargin )
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
%       UML Class Diagram in the Matlab Web Browser
%
% Side effect: 
%       temporary files
%
% Examples:
%     m2uml.uml2web('PlantUmlScript','h:\m\PiaRepos\m2uml\temp.uml')
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
    assert( st == 0                         ...
        ,   'm2uml:uml2web:PlantUMLFailed'  ...
        ,   'PlantUML failed: ', msg        )

    [ folderspec, file_name, ~ ] = fileparts( ipv.PlantUmlScript );

    web( fullfile( folderspec, [file_name,'.svg'] ), '-new' ) 
end
