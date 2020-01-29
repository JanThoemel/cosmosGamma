%% m2uml_cloud_m2uml        .
% Prerequisites for running the examples in this script are
% * m2uml is installed
%
%%
   [~] = m2uml.run( 'test of m2uml installation' , ...
                {   'm2uml.ClassNode' 
                    'm2uml.Operation'  
                    'm2uml.Property'        
                    'm2uml.ScriptComposite'
                } , {
                    'm2uml.ClassNode  --> m2uml.Property'
                    'm2uml.ClassNode  --> m2uml.Operation'
                }  );
%%
    [~] = m2uml.run( 'test of m2uml installation' , ...
                {   'm2uml.ClassNode' 
                    'm2uml.ClassStructure'
                    'm2uml.Operation'  
                    'm2uml.PlantUmlAdapter'
                    'm2uml.Property'        
                    'm2uml.Relationship'
                    'm2uml.ScriptComposite'
                    'm2uml.UmlScript' 
                } , {
                    'm2uml.ClassStructure "1" --> "*" m2uml.ClassNode'
                    'm2uml.ClassStructure "1" --> "*" m2uml.Relationship'
                    'm2uml.ClassNode  --> m2uml.Property'
                    'm2uml.ClassNode  --> m2uml.Operation'
                    'm2uml.PlantUmlAdapter --> m2uml.ClassStructure'
                    'm2uml.PlantUmlAdapter --> m2uml.UmlScript'
                } );

