classdef 	Relationship < handle  % < m2uml.ScriptComponent
% Relationship 
    
%   It is too difficult to deduce the instance level (/other) relationships from the 
%   static code. It might be more feasible to use running code, e.g. 
%   1.  search variables, the values of which are instances of user defined classes. 
%   2.  search the defining class (DefiningClass in meta) of the variables 

%   See:    http://www.uml-diagrams.org/association.html 
%           http://en.wikipedia.org/wiki/State_pattern
%           http://norvig.com/design-patterns/ppframe.htm
%           http://java-questions.com/oops_interview_questions.html    

%#ok<*UNRCH>            

    properties  
        Name
        ID_
        Type  
        SourceNode
        TargetNode
        Label                   = '';
        SourceMultiplicity      = [];
        TargetMultiplicity      = [];
        PlantUmlArrow           = '';
    end
    
    methods     
        function    this = Relationship         ( varargin )        
            %Relationship. Constructor
            
            if nargin >= 1
                ipp = InputPreprocessor( {
                        3 'FileSpec'    nan     {'char'}  {'FileExist'}
                        } );
                ipv = ipp.parse( varargin{:} );

                meta_data = meta.class.fromName( filespec2fqn( ipv.FileSpec ) );
                if not( isempty( meta_data ) )
                    N   = numel( meta_data.SuperClasses );  % N>0 => Generalization
                    if N >= 1
                        this( 1, N ) = m2uml.Relationship();
                        for ii = 1 : N
                            this(ii).ID_        = nextID;
                            this(ii).Type       = 'Generalization';
                            this(ii).SourceNode = meta_data.Name;
                            this(ii).TargetNode = meta_data.SuperClasses{ii}.Name;
                        end
                    else
                        % null object: http://stackoverflow.com/questions/8915813/
                        % how-can-i-pass-a-null-reference-in-matlab-so-that-isa-returns-true
                        this.ID_        = nextID;
                        this.Type       = 'Generalization';
                        this.SourceNode = meta_data.Name;
                        this.TargetNode = 'value';
                    end
                end
 
%   Q&D, 2014-02-15, poi: Move the PlantUML-code-fragments, which define relationship
%               arrows, to outside the class definition files. Outside the class
%               definitions, the fragments must be complete PlantUML relationship
%               definifions. 
%
%               This code silently assumes that "this" is the source node. That is
%               fine with inheritance. However, with PlantUML-code-fragments that is
%               confusing although the result will be correct, I think. PlantUML code
%               fragments in the class definitions is not a good idea because
%               1.  The class with the fragment will be part of several class diagrams
%                   and one set of fragments cannot suite all.
%               2.  Hidden arrows will be used to control the layout of the class
%                   diagram. 

                sas = struct([]);
                for s = sas
                    this(end+1).ID_             = nextID;               %#ok<AGROW>
                    this(end  ).Type            = s.Type;
                    this(end  ).SourceNode      = meta_data.Name;
                    this(end  ).TargetNode      = s.TargetNode;
                    this(end  ).PlantUmlArrow   = s.PlantUmlArrow;
                end
            else
                this.ID_ = nextID;    
            end
        end
        function    iterator = createIterator   ( ~ )               
            iterator = NullIterator();
        end
        function    render                      ( this, depth )     
            
            if  isempty( this.Type ),   return
            end

            if false    , target_multiplicity = sprintf( '"%s"', '' );
            else          target_multiplicity = '';
            end
            if false    , source_multiplicity = sprintf( '"%s"', '' ); 
            else          source_multiplicity = '';
            end
            if false    , relation_label = sprintf( ': %s', '' );
            else          relation_label = '';
            end
            
            switch this.Type
                case 'Bidirectional'    ,   relation_arrow = '<-->' ;            
                case 'Generalization'   ,   relation_arrow = '-up-|>' ;            
                case 'Other'            ,   relation_arrow = '-->'  ;
                case 'Self'             ,   relation_arrow = '--'   ;
                case 'PlantUmlArrow'    ,   relation_arrow = this.PlantUmlArrow;    
            otherwise
                error(  'Relationship:render:IllegalType'       ...
                    ,   'Illegal type of relationship: "%s"'    ...
                    ,   value2short( this.Type )                )
            end
            
            class_type_names = fieldnames( m2uml.ClassNode.ClassTypes );
            
            if not( any( strcmp( this.TargetNode, class_type_names ) )  ... 
                    || strcmp( this.Type, 'Self' )                      )                 
            
                uml2doc.addString( sprintf( '%s%s %s %s %s %s %s %s %s' ...
                                        ,   indentation(depth)          ...
                                        ,   this.ID_                    ...
                                        ,   this.SourceNode             ...
                                        ,   source_multiplicity         ...
                                        ,   relation_arrow              ...
                                        ,   target_multiplicity         ...
                                        ,   this.TargetNode             ...
                                        ,   relation_label              ) )
            end 
        end
        function    addOtherRelationship( this, varargin )  
%           2017-01-26, poi: Renamed addSemanticRelationship to addOtherRelationship
%                       It doesn't seems to be used anyhow.
%
%           UML specification categorizes association as semantic relationship. 
%           Some other UML sources also categorize association as a structural 
%           relationship. Wikipedia states that association is instance level 
%           relationship and that associations can only be shown on class diagrams. 
%           Not sure where they got that information from but it is not based on 
%           UML specification. / http://www.uml-diagrams.org/association.html           

            persistent ipp
            if isempty( ipp )
                ipp = InputPreprocessor( {
                    3 'Name'                ''      {'char'}  {}
                    3 'Type'                'Other' {'char'}  {}
                    3 'SourceNode'          nan     {'char'}  {}
                    3 'TargetNode'          nan     {'char'}  {}
                    3 'Label'               ''      {'char'}  {}
                    3 'SourceMultiplicity'  []      {'char'}  {}
                    3 'TargetMultiplicity'  []      {'char'}  {}
                    } );
            end
            ipv = ipp.parse( varargin{:} );
            
            if strcmp( ipv.SourceNode, ipv.TargetNode ),    this.Type = 'Self';
            else                                            this.Type = ipv.Type;       
            end
            this.SourceNode = ipv.SourceNode;
            this.TargetNode = ipv.TargetNode;
        end
    end
end
