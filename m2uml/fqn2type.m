function    type = fqn2type( name )
% fqn2type takes a fully qualified name, fnq, and returns its module type, 
% i.e. 'class'|'function'|'script'
%
% fnq shall be on the search path
%
% See also: exist, isClassdef, filespec2fnq

% See Answer: Walters answers to "How to implement isClassdef(filespec) ... " and
%             "Is there a term for "mypack.my?subpack.my?Fcn"?"  
    

    str = which( name );
    if isempty( str )
        type = '';
        return                                                              %   RETURN
    end
    
    if exist( name, 'class' ) == 8
        type = 'class';
    else
        try
            nargin( name );
            type = 'function';
        catch me 
            if strcmp( me.identifier,'MATLAB:nargin:isScript' )
                type = 'script';
            else
                rethrow( me )
            end
        end
    end
end
