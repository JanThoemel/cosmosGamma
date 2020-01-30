classdef    ( Sealed ) uml2doc < handle              
% uml2doc replaces log2win in m2uml. uml2doc writes PlantUML-code to an editor document.
%   
%   Singleton pattern                               .
%   uml2doc mimics the API of log2win. 
%
%   See also: log2win

%   With links and tooltips the small textbox is just too small. 
%  

%   2012-02-18, poi: Created

    properties  ( Access = private )                %
        document
        folderspec
    end
    properties  ( Constant = true )                 %
        filename = 'temp.uml';
    end
    
    methods     ( Access = private )                %
        function  this = uml2doc()                  %
        end
    end
    methods     ( Static = true, Access = public )  %
        function    ffs = setupWindow()             %
% dbk            
            this = uml2doc.Instance;            
            this.folderspec = fileparts(fileparts(which(mfilename)));
            ffs = fullfile( this.folderspec, this.filename );
            if exist(ffs,'file') == 2
                if matlab.desktop.editor.isOpen( ffs )
                    tmp = matlab.desktop.editor.findOpenDocument(ffs);
                    tmp.closeNoPrompt;
                end
                delete( ffs )
            end
            this.document = matlab.desktop.editor.newDocument('');
            this.document.saveAs( ffs );
        end
        function    addString( input_string )       %
            this = uml2doc.Instance;
            this.document.appendText( sprintf( '%s\n', input_string ) );
            this.document.save
        end
        function    cac = getString()               %
            this = uml2doc.Instance;
            str = this.document.Text;
            cac = strtrim( strsplit( str, '\n' ) );
        end
        function    clearText( varargin )           %
            this = uml2doc.Instance;
            this.document.Text = '';
            this.document.save();
        end
    end
    methods     ( Static = true, Access = public )  %
        function    this = Instance()           %
            persistent  instance
            if isempty( instance ) || not( isvalid( instance ) )
                instance = uml2doc();
            end
            this = instance;
            assert( strcmp( caller, 'uml2doc.setupWindow' )                 ...
                ||  isa( this.document, 'matlab.desktop.editor.Document' )  ...
                ,   'uml2doc:NoOpenDocument'                                ...
                ,   'uml2doc has no open document. Run uml2doc.setupWindow.' )
        end
    end
end
