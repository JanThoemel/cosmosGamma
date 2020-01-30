classdef    TodoFixme < handle  % < m2uml.ScriptComponent
% TodoFixme 
    
    properties  
        Name
        ID_
        Type
        Line
        HyperLink       = '';   %
        ToolTipString   = '';   % 
    end
    
    methods     
        function    this = TodoFixme( varargin )    
            % TodoFixme. Constructor
            if nargin >= 1
                ipp = InputPreprocessor( {
                        1 'FileSpec'    nan     {'char'}    {'FileExist'}
                        } );
                ipv = ipp.parse( varargin{:} );

%               cac = strsplit( txt2str( ipv.FileSpec ), '\n' );
%               Somehow zero-length lines didn't show up in cac as {''}; the length of
%               cac was less than the number of lines; the resulting hyperlinks didn't 
%               hit the the correct lines. textscan does better! Not worth the trouble 
%               to investigate further.
              
                fid = fopen( ipv.FileSpec, 'r' );
                cac = textscan( fid, '%s', 'Delimiter', '\n' );
                [~] = fclose( fid );
                
                xpr = [ '(?-s)'                     ... don't match dot with newline
                    ,   '(?x)'                      ... ignore space characters
                    ,   '^(?:\s*%+\s*)'             ...
                    ,   '((todo)|(fixme)|(note))'   ...
                    ,   '(?:[: ]+)'                 ...
                    ,   '(.+)$'                     ];
                
                castr   = regexpi( cac{1}, xpr, 'tokens' );
                jjLines = find( not( cellfun( @isempty, castr ) ) );
                N = length(jjLines);
                
                if N >= 1
                    this(1,N) = m2uml.TodoFixme();
                else
                    this = m2uml.TodoFixme.empty;
                    return                                                  %   RETURN
                end
               
                for ii = 1 : N
                    notation_text   = strtrim( castr{ jjLines(ii) }{1}{2} );
                    notation_type   = lower(   castr{ jjLines(ii) }{1}{1} );
                    len             = length( notation_text );
                    this(ii).Name   = notation_text( 1 : min(16,len) );     %
                    this(ii).ID_    = nextID;
                    this(ii).Type   = notation_type;
                    this(ii).Line   = jjLines(ii);

                    % Hyperlink and tooltips
                    this(ii).ToolTipString = notation_text;

                    fmt = 'matlab:matlab.desktop.editor.openAndGoToLine(''%s'',%d)';
                    this(ii).HyperLink = sprintf( fmt, ipv.FileSpec, jjLines(ii) );
                end
                 
                this( cellfun( @isempty, {this.Name} ) ) = [];
                
                ix_sorted = this.sort_in_display_order();
                this = this( ix_sorted ); 
            end
        end
        function    iterator = createIterator   ( ~                 )   
            iterator = NullIterator();
        end
        function    render                      ( this, depth, ~    )   
%
%           exclude operations (/methods), which are
%           1.  defined in abstract superclass
%           2.  clutter

%   TODO: This header/divider is good with classes, but not with functions. It creates an
%   empty compartment. Looks likes something is missing. One more reason to split classes
%   and functions into two subclasses.

            uml2doc.addString( sprintf( '%s__todo/fixme__', indentation(depth) ) )
           
% http://plantuml.sourceforge.net/qa/?qa=5151/hyperlink-interferes-with-visibility 
            format_spec = '%s%s {field} %c%s [[ %s {%s} ]]';
            for ii = 1 : length( this )
                uml2doc.addString                   ...
                    (   sprintf( format_spec        ...
                    ,   indentation(depth)          ...
                    ,   this(ii).ID_                ...
                    ,   visibility_(this(ii).Type)  ...
                    ,   this(ii).Name               ...
                    ,   this(ii).HyperLink          ...
                    ,   this(ii).ToolTipString      ) )
            end
        end
        function    ixs = sort_in_display_order ( this              )   
            % Display order: fixme, todo, note; and ascending on line number 

            sort_proxy  = nan( length( this ), 2 );
            
            [ ~, sort_proxy(:,1) ]  = visibility_({ this.Type });
% poi: reshape
                 sort_proxy(:,2)    = reshape( [this.Line], 1,[] );
            
            [ ~, ixs ]  = sortrows( sort_proxy, 1:size(sort_proxy,2) );
        end
    end
end
function    [ vis, num ] = visibility_( keywords )

    if isa( keywords, 'char' )
        keywords = { keywords };
        isChar = true;
    else
        isChar = false;
    end
    
    savis = cell2struct( { '-'; '#'; '+' }, { 'fixme'; 'todo'; 'note' } );
    sanum = cell2struct( { 1  ;   2;   3 }, { 'fixme'; 'todo'; 'note' } );
            
    len = length( keywords );
    vis = cell( len, 1 );
    num = nan(  len, 1 );
    
    for jj = 1 : len 
        try
            vis{jj} = savis.( keywords{jj} );
            num(jj) = sanum.( keywords{jj} );
        catch me
            getReport( me )
            dbk     % catch    
        end
    end
    
    if isChar
        vis = char( vis );
    end
end
