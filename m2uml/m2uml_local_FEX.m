%% m2uml_local_FEX          .
% Prerequisites for running the examples in this script are
% * m2uml is installed
% * PlantUML is installed 
% * Graphviz is installed
% * the File Exchange contributions, respectively, are installed
%
% and the paths to the File Exchange contributions shall be edited to 
% match your system 
% 
path_to_BN_Singleton = 'h:\m\FEX\oop\BN\Singleton';
path_to_BN_Iterator  = 'h:\m\FEX\oop\BN\Iterator';
path_to_TrafficSigns = 'h:\m\FEX\oop\TrafficSigns';
path_to_youemel      = 'h:\m\FEX\UML\youemel';
path_to_BLOC         = 'h:\m\FEX\UML\BLOC';  
%
%% Singleton                .
% http://uk.mathworks.com/matlabcentral/fileexchange/24911-design-pattern--singleton--creational-    addpath( 'h:\m\FEX\oop\BN\Singleton' )
    addpath( path_to_BN_Singleton )
    m2uml.call_local_PlantUML                               ...
        (   'Title'     ,   'BN_Singleton'                  ...
        ,   'Classes'   ,   {'Singleton','SingletonImpl'}   ...
        ,   'Arrows'    ,   {}                              )
    rmpath( path_to_BN_Singleton )
%% Iterator                 .
% http://uk.mathworks.com/matlabcentral/fileexchange/25225-design-pattern--iterator--behavioural-
    addpath( 'h:\m\FEX\oop\BN\Iterator' )
    m2uml.call_local_PlantUML                                                       ...
        ( 'Title'   , 'BN_Iterator'                                                 ...
        , 'Classes' , {'List','CellArrayList','Iterator','CellArrayListIterator'}   ...
        , 'Arrows'  , {'CellArrayList "1" <-left-o "1 " CellArrayListIterator : "  "'} )
    rmpath( 'h:\m\FEX\oop\BN\Iterator' )
%% Animated traffic lights  .
% http://uk.mathworks.com/matlabcentral/fileexchange/38316-object-oriented-program-example--animated-traffic-lights-on-road-intersection
    addpath( path_to_TrafficSigns )
    m2uml.call_local_PlantUML                                       ...
        ( 'Title'   , 'TrafficSigns'                                ...
        , 'Classes' , {'start_poi','map','trafficLamp','tLamps'}    ...
        , 'Arrows'  , {
                        'start_poi  -right-> map'
                        'start_poi  -down->  tLamps'
                        'tLamps "1" -right-> "4" trafficLamp : "  "'
                    } )
    rmpath( path_to_TrafficSigns )
%% youemel                  .
% <http://uk.mathworks.com/matlabcentral/fileexchange/47717-youemel youemel by Nicholas>
    addpath( path_to_youemel )
    m2uml.call_local_PlantUML       ...
        ( 'Title'   , 'youemel'     ...
        , 'Classes' , {
                        'youemel_poi'
                        'UmlClass'               
                        'UmlDiagram'             
                        'UmlDirectedRelationship'
                        'UmlGeneralization'      
                        'UmlRelationship'        
                    }    ...
        , 'Arrows'  , {
                        'youemel_poi     -->          UmlDiagram'
                        'UmlDiagram  "1" -right-> "*" UmlClass'
                        'UmlDiagram  "1" -left->  "*" UmlGeneralization : "  "'
                    } )
    rmpath( path_to_youemel )
%% BLOC                     .
% <http://uk.mathworks.com/matlabcentral/fileexchange
%   /31349-bloc-automatic-uml-class-diagram-creator 
%   BLOC - Automatic UML class diagram creator by Thinh>

    addpath( path_to_BLOC )
    m2uml.call_local_PlantUML           ...
        ( 'Title'   , 'BLOC by Thinh'   ...
        , 'Classes' , {
                        'Arrow'
...                     'Block'
                        'UMLpanel'
...                     'Compos'
...                     'Inher'
...                     'UMLcreator'
...                     'DataHold'
                    }    ...
        , 'Arrows'  , {
                    } )
    rmpath( path_to_BLOC )

    
