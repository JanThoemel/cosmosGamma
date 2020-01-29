function    uml = call_local_PlantUML( varargin )
% m2uml.call_local_PlantUML displays a UML Class Diagram in the Matlab Web Browser.
%
% Syntax: 
%       m2uml.call_local_PlantUML               ...
%               (   'Title'         , title_str     ... required
%               ,   'Classes'       , class_list    ... required
%               ,   'Arrows'        , other_arrows  ... required, possible empty
%               ,   'TempFolder'    , temp_folder   ... optional
%               ,   'PlantUmlJar'   , plantuml_jar  ... optional
%               ); 
%
% Input Parameters:
%       title_str       a text string, which will appear as title of the class diagram
%       class_list      a cell array of full names of classes. The names of classes, 
%                       which are members of a packages, shall be prefixed by the package 
%                       name, separated by a dot.  
%       other_arrows    a cell array of PlantUML statements, which defined arrows between 
%                       classes - other than inheritance arrows. See "3.1 Relations 
%                       between classes" in the PlantUML pdf-manual or the on-line help.
%       temp_folder     folder for temporary files, including the svg-file. Default is
%                       getenv('temp')
%       plantuml_jar    full filespec of the PlantUML compiled Jar. Default is 
%                       'c:\_MyPrg\PlantUML\plantuml.jar'. (Edit the value below.)
% 
% Output:
%       UML Class Diagram in the Matlab Web Browser
%
% Side effect: 
%       temporary files
%
% Examples:
%     m2uml.call_local_PlantUML                                                       ...
%         ( 'Title'   , 'BN_Iterator'                                                 ...
%         , 'Classes' , {'List','CellArrayList','Iterator','CellArrayListIterator'}   ...
%         , 'Arrows'  , {'CellArrayList "1" <-left-o "1 " CellArrayListIterator : "  "'} )

% Wishlist:
%   2016-11-03, poi: The user shall have the possibility to modify the PlantUML-script
 
%   TODO: assert Classes exist

    plantuml_jar = 'c:\_MyPrg\PlantUML\plantuml.jar';
    temp_folder  = getenv('temp');   
    
    ipp = InputPreprocessor( {
        3 'Title'       nan             {'char'}    {'row'}
        3 'Classes'     nan             {'cell'}    {'CellStr'}
        3 'Arrows'      nan             {'cell'}    {'CellStr'}
        3 'TempFolder'  temp_folder     {'char'}    {'FolderExist'}
        3 'PlantUmlJar' plantuml_jar    {'char'}    {}
        } );
    ipv = ipp.parse( varargin{:} );
   
    %   to make current_name a readable tab-name in the Matlab browser
    current_name    = strrep( ipv.Title, ' ', '_' );
    current_name    = matlab.lang.makeValidName( current_name ); 
    plantuml_script = fullfile( ipv.TempFolder, [current_name,'.uml'] );

    uml = m2uml.run( ipv.Title, ipv.Classes, ipv.Arrows );
    uml.export_code_to_plantuml_file( plantuml_script )

    if not( isempty( ipv.PlantUmlJar ) )
        cmd_str = strjoin( {'java -jar',ipv.PlantUmlJar,plantuml_script,'-tsvg'}, ' ' );

        [st,msg] = system( cmd_str );
        assert( st == 0                                     ...
            ,   'm2uml:call_local_PlantUML:PlantUMLFailed'  ...
            ,   'PlantUML failed: ', msg                    )

        web( fullfile( ipv.TempFolder, [current_name,'.svg'] ), '-new' ) 
    end
end
