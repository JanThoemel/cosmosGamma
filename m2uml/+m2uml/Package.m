classdef 	Package < m2uml.ScriptComposite
% Package
    
    methods
        function    this = Package      ( varargin      )   
            persistent ipp
            if nargin >= 1
                if isempty( ipp )
                    ipp = InputPreprocessor( {
                        3 'Name'        'no_name'           {'char'}  {}
                        3 'Description' 'no_description'    {'char'}  {}
                        } );
                end
                ipv = ipp.parse( varargin{:} );
                this.Name        = ipv.Name;
                this.Description = ipv.Description;
            end
        end
        function    render              ( this, depth   )   
            
            color_hex = rgb2hex([1,1,0.95],'#');
            
%   "namespace" is the closest to Matlab package
            if not( strcmp( this.Name, 'none' ) )
                uml2doc.addString( sprintf( '%s%s namespace %s %s {'    ...
                                        ,   indentation(depth)  ...
                                        ,   this.ID_            ...
                                        ,   this.Name           ...
                                        ,   color_hex           ) )
            end
            
            iterator = this.createIterator();
            while iterator.hasNext
                component = iterator.next();
                component.render( depth+1 )
            end
            
            if not( strcmp( this.Name, 'none' ) )
                uml2doc.addString( sprintf( '%s%s %s'           ...
                                        ,   indentation(depth)  ...
                                        ,   this.ID_, '}'       ) )
            end
        end
    end
end
