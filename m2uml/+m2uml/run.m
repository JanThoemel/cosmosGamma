classdef    run < handle
%   Some good help needed
%
% See also:
%    youemel
%
% Release history:

    properties
        code
    end
    methods
        function    this = run( title_str, class_list, other_arrows )        %
            % m2uml.run generates a PlantUML script, which defines an UML class diagram. 
            %
            % Syntax: 
            %       uml_object = m2uml.run( title_str, class_list, other_arrows ); 
            %
            % Input Parameters:
            %       title_str       a text string, which will appear as title of the 
            %                       class diagram
            %       class_list      a cell array of full names of classes. The names of
            %                       classes, which are members of a packages, shall be
            %                       prefixed by the package name, separated by a dot.
            %       other_arrows    a cell array of PlantUML statements, which define
            %                       arrows between classes. See "3.1 Relations between  
            %                       classes" in the PlantUML pdf-manual or 
            %                       http://plantuml.com/class-diagram on-line.
            %
            % Output parameters:
            %       uml_object      an instance of m2uml.run              
            %
            %       m2uml.run writes a PlantUML script to a document in the editor.  
            %
            % Description:   
            %       m2uml.run(title_str,class_list,other_arrows) generates a script of
            %       PlantUML code in an editor document, which is saved as temp.uml. The
            %       script defines an UML class diagram, which depict populated class
            %       boxes for the classes of class_list together with inheritance arrows
            %       and the arrows of other_arrows.  
            %
            % Examples:
            %     [~] = m2uml.run( 'test of m2uml installation' ...
            %         , { 
            %             'm2uml.ClassNode'       
            %             'm2uml.Operation'       
            %             'm2uml.Property'        
            %             'm2uml.ScriptComposite' 
            %         } , {
            %             'm2uml.ClassNode  --> m2uml.Property'
            %             'm2uml.ClassNode  --> m2uml.Operation'
            %             } ...
            %         );

%               
%   <http://uk.mathworks.com/help/matlab/matlab_oop/scoping-classes-with-packages.html>
%
            uml2doc.setupWindow();
            nextID('none');

            ffs = m2uml.FolderFileSpec();

            class_list = reshape( class_list, 1,[] );
            for name = class_list
                filespec = which( name{:} );
                if not( isempty( filespec ) )
                    ffs.addFolderFileSpec( filespec );
                else
                    fprintf( 2, 'WHICH returns empty for "%s"\n', name{:} ) %#ok<PRTCAL>
                end
            end

            cls = m2uml.ClassStructure( 'FolderFileSpec', ffs );
            pua = m2uml.PlantUmlAdapter('ClassStructure', cls, 'Title', title_str );

            if not( isempty( other_arrows ) )
                pua.addRelationshipCode( other_arrows ) 
            end
            pua.createScript()

            this.code = strtrim( uml2doc.getString );
        end
        function    export_code_to_plantuml_file( this, filespec )              %
            fid = fopen( filespec, 'w+' );
            for jj = 1 : length( this.code )
                fprintf( fid, '%s\n', this.code{jj} );
            end
            [~] = fclose( fid );
        end
    end
end
