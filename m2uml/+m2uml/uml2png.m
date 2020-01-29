function    uml2png( varargin )
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
%       A png-file containing the class diagram in the same folder as the PLantUML script
%
% Examples:
%     m2uml.uml2png('PlantUmlScript','h:\m\PiaRepos\m2uml\temp.uml')
%
% Side effect:
%       A cmapx-file, http://www.graphviz.org/doc/info/output.html#d:cmapx, might appear
%       in the same folder as the PLantUML script.
%
% Wishlist:
    
    plantuml_jar = 'c:\_MyPrg\PlantUML\plantuml.jar';
    ipp = InputPreprocessor( {
        3 'PlantUmlScript'  nan             {'char'}    {'FileExist'}
        3 'PlantUmlJar'     plantuml_jar    {'char'}    {'FileExist'}
        } );
    ipv = ipp.parse( varargin{:} );
   
    cmd_str = strjoin({'java -jar',ipv.PlantUmlJar,ipv.PlantUmlScript,'-tpng'}, ' ' );

    [st,msg] = system( cmd_str );
    if st == 0
        [folder,file,~] = fileparts( ipv.PlantUmlScript );
        filespec        = fullfile( folder, [file,'.png'] );
        fprintf( 'Created: %s\n', filespec )
    else
        error( 'm2uml:uml2web:PlantUMLFailed', 'PlantUML failed: %s', msg )
    end
end
