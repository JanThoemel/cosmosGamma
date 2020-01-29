classdef 	UmlScript < m2uml.ScriptComposite
% UmlScript handles ??? 
%   
    
    properties  
        Title                   
        RelationshipCodeList = cell( 1, 0 );         
    end
    
    methods
        function    this = UmlScript            ( varargin      )   
            
            persistent ipp
            if nargin >= 1
                if isempty( ipp )
                    ipp = InputPreprocessor( {
                        3 'Title'       'no_title'          {'char'}  {}
                        } );
                end
                ipv = ipp.parse( varargin{:} );

                this.Title  = ipv.Title;
            end
        end
        function    render                      ( this, depth   )   
            
            uml2doc.addString( sprintf( '%s%s %s'           ...
                                    ,   indentation(depth)  ...
                                    ,   this.ID_            ...
                                    ,   '@startuml'         ) )
                                
            uml2doc.addString( sprintf( '%s%s title <b>%s</b>'  ...
                                    ,   indentation(depth)      ...
                                    ,   this.ID_                ...
                                    ,   this.Title              ) )
           
            iterator = this.createIterator();
            while iterator.hasNext
                component = iterator.next();
                component.render( depth+1 )
            end
            
            for jj = 1 : length( this.RelationshipCodeList )
                
                uml2doc.addString( sprintf( '%s%s %s'       ...
                        ,   indentation( depth+1 )          ...
                        ,   this.ID_                        ...
                        ,   this.RelationshipCodeList{jj}   ) )
            end
            
            uml2doc.addString( sprintf( '%s%s %s'           ...
                                    ,   indentation(depth)  ...
                                    ,   this.ID_            ...
                                    ,   '@enduml'           ) )
        end
        function    addRelationshipCode         ( this, rows    )   
            if isa( rows, 'char' )
                this.RelationshipCodeList{1,end+1} = rows;
            elseif iscellstr( rows )
                assert( isvector( rows )                            ...
                    ,   'm2uml:UmlScript:IllegalDim'                ...
                    ,   'Input, "%s", is not a vector of strings'   ...
                    ,   value2short( rows )                         )
                if iscolumn( rows )
                    rows = transpose( rows );
                end
                this.RelationshipCodeList = cat( 2, this.RelationshipCodeList, rows );
            else
                error(  'm2uml:UmlScript:IllegalClass'                      ...
                    ,   'Input, "%s", is not a string or column of strings' ...
                    ,   value2short( rows )                                 ) 
            end
        end
    end
end
