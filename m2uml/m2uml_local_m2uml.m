%% m2uml_local_m2uml        .
% Prerequisites for running the examples in this script are
% * m2uml is installed
% * PlantUML is installed 
% * Graphviz is installed
%
%%
    m2uml.call_local_PlantUML                           ...
        (   'Title'     ,   'm2uml.ClassNode'           ...
        ,   'Classes'   ,   {   'm2uml.ClassNode' 
                                'm2uml.Operation'  
                                'm2uml.Property'        
                                'm2uml.ScriptComposite'
                            }   ...
        ,   'Arrows'    ,   {
                                'm2uml.ClassNode  --> m2uml.Property'
                                'm2uml.ClassNode  --> m2uml.Operation'
                            } ...
        );
%%
    m2uml.call_local_PlantUML                               ...
        (   'Title'     ,   'test of m2uml installation'    ...
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
%%
    m2uml.call_local_PlantUML                               ...
        (   'Title'     ,   'test of m2uml installation'    ...
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

