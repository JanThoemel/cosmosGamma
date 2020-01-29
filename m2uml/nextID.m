function 	varargout = nextID( varargin )
%   nextID returns an empty string or, #001, where the number is incremented by each call
%
%   The purpose of ID is to provide a unique ID for objects of handle classes.
%   The class should define a property, ID, the value of which is set at creation.

    persistent n
    mlock
    
    if     nargin == 1 && strcmp( varargin{1}, 'none' )
        n = -1;
        varargout = {};

    elseif nargin == 1 && strcmp( varargin{1}, 'reset' )
        n = 0;
        varargout = {};
    
    else
        if isempty(n),  n = 0;  
        end
        if  n <= -1  ,              varargout = { '' };
        else            n = n + 1;  varargout = { sprintf( '#%03u', n ) };
        end
    end
end