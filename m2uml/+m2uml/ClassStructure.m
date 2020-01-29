classdef 	ClassStructure < handle
% ClassStructure 
%
% See also: 

% Author:   per isakson
% Email:    per-ola-isakson(at)gmail_com 

% Design:      
%   Composite + Iterator pattern for Packages and ClassNodes instead of ClassNodeVector  
%
%   Instance Level Relationships:
%   1.  Association
%   2.  Aggregation
%   3.  Composition 
%   
%   4.  Dependency
%
% UML:
%   http://en.wikipedia.org/wiki/Class_diagram
%   http://en.wikipedia.org/wiki/Object_composition

%   Matlab Central, Answer
%   -   Automatic tool to generate Sequence and Class Diagrams (UML)

    properties                      
        ClassNodeVector     = m2uml.ClassNode.empty;
        RelationshipVector  = m2uml.Relationship.empty;
        PackageNameList     = m2uml.Package.empty
        FullfileList        = cell(1,0);
    end
    
    methods
        function    this = ClassStructure       ( varargin  )   
            % ClassStructure. Constructor
            
            if nargin >= 1
                ipp = InputPreprocessor( {
                    3 'FolderFileSpec'  nan     {'m2uml.FolderFileSpec'}  {}
                    } );
                ipv = ipp.parse( varargin{:} );

                while ipv.FolderFileSpec.hasNext

                    ffs = ipv.FolderFileSpec.getNextFullFile();

                    this.ClassNodeVector(   end+1)  = m2uml.ClassNode( 'FileSpec', ffs );
                    this.FullfileList{   1, end+1}  = ffs;
                    % More than one relationship might be returned, 
                    % e.g. multiple inheritance
% TODO: Commenting out the next three lines produces a diagram with only ClassNodes
                    relationship = m2uml.Relationship( 'FileSpec', ffs );
                    len = numel( relationship );
                    this.RelationshipVector( end+1 : end+len ) = relationship;
                end 

                % Move the package name, "none", to the front, if it exists.
                cac = unique({this.ClassNodeVector(:).PackageName});
                isn = strcmp( cac, 'none' );
                if any( isn )
                    ixn     = find( isn );
                    ix_new  = 1 : numel( cac );
                    ix_new  = cat( 2, ix_new(ixn), ix_new(1:ixn-1), ix_new(ixn+1:end) );

                    this.PackageNameList = cac( ix_new );
                else 
                    this.PackageNameList = cac;
                end
            end
        end
    end
end

