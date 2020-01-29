function    isf = isflint( m )

%   floating double only
%   See also: m:\m\Pia\Pia2\Sandbox\isAllFlint.m
%   
%   http://www.mathworks.com/company/newsletters/news_notes/pdf/Fall96Cleve.pdf
%   JanSimon: http://www.mathworks.se/matlabcentral/answers/67247-about-isinteger- ...
%       command-confusion#answer_78914   

    assert( isa( m, 'double' ) && isvector( m )     ...
        ,   'isflint:IllegalInput'                  ...
        ,   'The input should be a double vector'   )

    isf =   all( abs(   m ) <= flintmax ) ...
        &&  all( floor( m ) == m        ) ; 
end