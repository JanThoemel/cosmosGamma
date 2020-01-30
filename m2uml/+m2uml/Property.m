classdef    Property < handle  % < m2uml.ScriptComponent
% Property
    
% FIXME, 2012-09-21 20:19, poi: How handle an empty PropertyList?

    properties  
        Name
        ID_
        GetAccess
        SetAccess
        Dependent
        Constant
        Abstract
        DefiningClass
        Comment
        
        HyperLink       = '';               %
        ToolTipString   = 'No tooltip';     % 
        VisibilityCode  = '';   %
    end
    methods     
        function    this = Property( varargin )         
            %Property. Constructor
            if nargin == 0
                return                                                  %   RETURN
            end
            ipp = InputPreprocessor( {
                    1 'MetaInfo'    nan     {'meta.property'}   {}
                    1 'FileSpec'    nan     {'char'}            {}
                    } );
            ipv = ipp.parse( varargin{:} );

            len = numel( ipv.MetaInfo );
            if len >= 1       % 2014-01-30, poi: taking a chance
                this( 1, len ) = m2uml.Property();
            else
                this = m2uml.Property.empty;
            end
            for ii = 1 : len          
                this(ii).Name       = ipv.MetaInfo(ii).Name     ;
                this(ii).ID_        = nextID;
                this(ii).GetAccess  = ipv.MetaInfo(ii).GetAccess; 
                this(ii).SetAccess  = ipv.MetaInfo(ii).SetAccess; 
                this(ii).Dependent  = ipv.MetaInfo(ii).Dependent; 
                this(ii).Constant   = ipv.MetaInfo(ii).Constant ; 
                this(ii).Abstract   = ipv.MetaInfo(ii).Abstract ; 

                this(ii).DefiningClass  = ipv.MetaInfo(ii).DefiningClass;

                % Tooltips and Hyperlinks
                %   A property has 
                %   * three tooltips: on-line comment, and setter and getter H1-lines  
                %   * two hyperlinks: setter and getter functions
                %
                %   Tooltips: concatenate the and hope for multi-line tooltips.
                %   Hyperlink: to setter and if not to getter function
                %
                try
                    if not( isempty( ipv.MetaInfo(ii).SetMethod ) )
                        SetFunc = sprintf( 'set.%s', ipv.MetaInfo(ii).Name );
                        H1  = get_H1_line( ipv.FileSpec, SetFunc );
                        this(ii).ToolTipString = sprintf( 'Set: %s', H1 );
                    else
                        SetFunc = '';
                    end
                    if not( isempty( ipv.MetaInfo(ii).GetMethod ) )
                        GetFunc = sprintf( 'get.%s', ipv.MetaInfo(ii).Name );
                        H1  = get_H1_line( ipv.FileSpec, GetFunc );
                        str = sprintf( 'Get: %s', H1 );
                        if isempty( SetFunc )
                            this(ii).ToolTipString = [ this(ii).ToolTipString, str ];
                        else
                            this(ii).ToolTipString                          ...
                            = sprintf( '%s; %s', this(ii).ToolTipString, str );
                        end
                    else
                        GetFunc = '';
                    end
                catch me
                    fprintf( 2, '>>>> %s - %s\n', ipv.FileSpec, this(ii).Name ); 
                    getReport( me )
                end
                
                % Hyperlink
                fmt = 'matlab:matlab.desktop.editor.openAndGoToFunction(''%s'',''%s'')';
                if not( isempty( SetFunc ) )
                    this(ii).HyperLink = sprintf( fmt, ipv.FileSpec, SetFunc );
                elseif not( isempty( GetFunc ) )
                    this(ii).HyperLink = sprintf( fmt, ipv.FileSpec, GetFunc );
                else
                    % do nothing
                end
            end
        end
        function    iterator = createIterator( ~ )      
            iterator = NullIterator();
        end
        function    render( this, depth, ~ )   
            
            format_spec = '%s%s {field} %c%s [[ %s {%s} ]]';
            for obj = this  
                str = sprintf(  format_spec         ...
                            ,   indentation(depth)  ...
                            ,   obj.ID_             ...
                            ,   obj.VisibilityCode  ...
                            ,   obj.Name            ...
                            ,   obj.HyperLink       ...
                            ,   obj.ToolTipString   );

                uml2doc.addString( str )
            end
        end
    end
end
