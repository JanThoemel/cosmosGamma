classdef 	PlantUmlAdapter < handle
% PlantUmlAdapter  

    properties
        classStructure  % = m2uml.ClassStructure.empty
        umlScript       % = m2uml.UmlScript.empty
        Title
    end
    
    methods
        function    this = PlantUmlAdapter      ( varargin  )   

            persistent ipp
            if nargin >= 1
                ipp = InputPreprocessor( {
                    3 'ClassStructure'  nan         {'m2uml.ClassStructure'}    {}
                    3 'Title'           'no_title'  {'char'}                    {}  
                    } );
                ipv = ipp.parse( varargin{:} );

                this.classStructure = ipv.ClassStructure;
                this.Title          = ipv.Title;
                this.umlScript      = m2uml.UmlScript( 'Title', this.Title );
            end
        end
        
        function    createScript                ( this      ) 
try
            for cac = this.classStructure.PackageNameList
                P.( strrep( cac{:}, '.', '_' ) ) = m2uml.Package( 'Name', cac{:} );
            end
catch me
    %   should not occur
    disp( getReport( me, 'extended', 'hyperlinks', 'on' ) )
    keyboard
end
            for obj = this.classStructure.ClassNodeVector
                P.( strrep( obj.PackageName, '.', '_' ) ).add( obj )
            end
            for cac = this.classStructure.PackageNameList
                this.umlScript.add( P.( strrep( cac{:}, '.', '_' ) ) )
            end
            for obj = this.classStructure.RelationshipVector
                this.umlScript.add( obj )
            end
% dbk            
            this.umlScript.render( 0 )
        end
        function    addRelationshipCode         ( this, str )   
            this.umlScript.addRelationshipCode( str ) 
        end
    end
end
