function 	varargout = indentation( varargin )
%   indentation  
%
%   Example:
%     indentation('<<>>')   %   2016-11-11, poi: not used, maybe obsolete
%     indentation(2)
%     ans =
%     <<>><<>>

    persistent str
    if isempty( str ),  str = repmat( char(32), [1,4] );
    end
    
    narginchk( 1, 1 ) 

    if iscellstr( varargin ),       
        str = varargin{1};
    elseif isflint( varargin{1} )
        varargout = { repmat( str, 1, varargin{1} ) };
    else
        error(  'indentation:IllegalClass'              ...
            ,   'Neither char nor a whole number, "%s"' ...
            ,   value2short( varargin{1} )              )
    end
end