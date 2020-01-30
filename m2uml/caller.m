function    [ name, ffs, line ] = caller()       
% caller - returns the name of the caller of the currently running function/method  
%
    stk = dbstack('-completenames');
   
    if length( stk ) >=3
        name = stk(3).name;
        ffs  = stk(3).file;
        line = stk(3).line;
    else
        name = 'base';
        ffs  = 'base';
        line = nan;
    end
end
