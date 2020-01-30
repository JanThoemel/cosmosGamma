%% m2uml_v11_user_interface
%
%   m2uml.call_local_PlantUML
%   m2uml.run
%   m2uml.uml2png
%   m2uml.uml2svg
%   web
%
%% Test of m2uml installation. Run m2uml to create PlantUML code        2017-01-22  .
%
   [~] = m2uml.run( 'Test of m2uml installation' , ...
                {   
                    'm2uml.ScriptComposite'
                } , {
                    'm2uml.ClassNode  --> m2uml.Property'
...                 'm2uml.ClassNode  --> m2uml.Operation'
                    'm2uml.ClassNode  --> m2uml.TodoFixme'
                }  );
%% Test m2uml with local PlantUML-installation. Display class diagram   2017-01-22  .
%
    m2uml.call_local_PlantUML                               ...
        (   'Title'     ,   'Local PlantUML-installation'   ...
        ,   'Classes'   ,   {   
                                'm2uml.ScriptComposite' 
                                'm2uml.ClassNode' 
                                'm2uml.Property'        
                                'm2uml.Operation' 
                                'm2uml.TodoFixme'
                            }   ...
        ,   'Arrows'    ,   {
                                'm2uml.ClassNode  --> m2uml.Property'
                                'm2uml.ClassNode  --> m2uml.Operation'
                                'm2uml.ClassNode  --> m2uml.TodoFixme'
                            }   ...
        );
%
% 
%% Layout controlled by DOT.                                            2017-01-22  .
%
    m2uml.call_local_PlantUML                               ...
        (   'Title'     ,   'Layout controlled by DOT'      ...
        ,   'Classes'   ,   {   'm2uml.ClassStructure'
                                'm2uml.ClassNode' 
                                'm2uml.Property'        
                                'm2uml.Operation' 
                                'm2uml.TodoFixme'
                                'm2uml.PlantUmlAdapter'
                                'm2uml.Relationship'
                                'm2uml.ScriptComposite'
                                'm2uml.UmlScript' 
                            }   ...
        ,   'Arrows'    ,   {
                                'm2uml.ClassStructure "1" --> "*" m2uml.ClassNode'
                                'm2uml.ClassStructure "1" --> "*" m2uml.Relationship'
                                'm2uml.ClassNode  --> m2uml.Property'
                                'm2uml.ClassNode  --> m2uml.Operation'
                                'm2uml.ClassNode  --> m2uml.TodoFixme'
                                'm2uml.PlantUmlAdapter --> m2uml.ClassStructure'
                                'm2uml.PlantUmlAdapter --> m2uml.UmlScript'
                            } ...
        );
%% Layout controlled by DOT and a hidden arrow.                         2017-01-22  .
    m2uml.call_local_PlantUML                                   ...
        (   'Title'     ,   'layout modified by a hidden arrow' ...
        ,   'Classes'   ,   {   'm2uml.ClassNode' 
                                'm2uml.ClassStructure'
                                'm2uml.Operation'  
                                'm2uml.PlantUmlAdapter'
                                'm2uml.Property'        
                                'm2uml.Relationship'
                                'm2uml.ScriptComposite'
                                'm2uml.UmlScript' 
                            }   ...
        ,   'Arrows'    ,   {
                                'm2uml.ClassStructure "1" --> "*" m2uml.ClassNode'
                                'm2uml.ClassStructure "1" --> "*" m2uml.Relationship'
                                'm2uml.ClassNode  --> m2uml.Property'
                                'm2uml.ClassNode  --> m2uml.Operation'
                                'm2uml.PlantUmlAdapter --> m2uml.ClassStructure'
                                'm2uml.PlantUmlAdapter --> m2uml.UmlScript'
                                'm2uml.ClassNode -[hidden]left-> m2uml.UmlScript'
                            } ...
        );
