classdef    Operation < handle  % < m2uml.ScriptComponent
% Operation 
    
    properties  
        Name
        ID_
        Access  
        Static  
        Abstract
        Sealed  
        Hidden  
        DefiningClass  

        HyperLink       = '';   %
        ToolTipString   = '';   %
        VisibilityCode  = '';   %
        
% TODO: move to ClassNode        
%       hasTooltipAndHyperlink  %   I'll change this name, if I come up with something 
    end
    
    methods     
        function    this = Operation( varargin )        
            %Operation. Constructor
            if nargin == 0
                return                                                  %   RETURN
            end
            ipp = InputPreprocessor( {
                    1 'MetaMethod'      nan     {'meta.method'}     {}
                    1 'FileSpec'        nan     {'char'}            {}
                    2 'isHiddenClass'   false   {'logical'}         {'addOptDummy'}
                    } );
            ipv = ipp.parse( varargin{:} );
            
%   YAGNI: You Aren't Gonna Need It. Gathering information for all methods is not needed
%   for the class diagram. It takes processing time and memory. Furthermore, it bloats the
%   code. The same applies to the properties.
%
            if isempty( ipv.MetaMethod )
                this = m2uml.Operation.empty;
                return                                                  %   RETURN
            end
            
            len = length( ipv.MetaMethod ); 
            this( 1, len ) = m2uml.Operation();
            
            for ii = 1 : len 

                if isa( ipv.MetaMethod(ii).Access, 'char' )
                    this(ii).Access = ipv.MetaMethod(ii).Access  ;
                else
                    this(ii).Access = 'protected';
                end

                this(ii).Name       = ipv.MetaMethod(ii).Name    ;
                this(ii).ID_        = nextID                     ;
                this(ii).Static     = ipv.MetaMethod(ii).Static  ;
                this(ii).Abstract   = ipv.MetaMethod(ii).Abstract;
                this(ii).Sealed     = ipv.MetaMethod(ii).Sealed  ;
                this(ii).Hidden     = ipv.MetaMethod(ii).Hidden  ;

                this(ii).DefiningClass = ipv.MetaMethod(ii).DefiningClass;

                % Tooltips 
                try                   
                    this(ii).ToolTipString                          ...
                    = get_H1_line( ipv.FileSpec, this(ii).Name );
                catch me
                    dbk % catch
                    fprintf( 2, '>>>> %s - %s\n', ipv.FileSpec, this(ii).Name ); 
                    getReport( me )
                end

                % Hyperlink
                fmt = 'matlab:matlab.desktop.editor.openAndGoToFunction(''%s'',''%s'')';
                this(ii).HyperLink = sprintf( fmt, ipv.FileSpec, this(ii).Name );
            end
        end
        function    iterator = createIterator( ~ )      
            iterator = NullIterator();
        end
        function    render( this, depth, ~ )   
                
            uml2doc.addString( sprintf( '%s____', indentation(depth) ) )

            for obj = this
                str = sprintf(  '%s%s %c%s() [[ %s {%s} ]]' ...
                            ,   indentation( depth )        ...
                            ,   obj.ID_                     ...
                            ,   obj.VisibilityCode          ...
                            ,   obj.Name                    ...
                            ,   obj.HyperLink               ...
                            ,   obj.ToolTipString           ); 
                                        
                uml2doc.addString( str )
            end
        end
    end
end
