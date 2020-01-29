function    H1 = get_H1_line( filespec, fnc_name )
% get_H1_line generates a PlantUML script, which defines an UML class diagram. 
%
% Syntax: 
%       H1_line = get_H1_line( filespec, fnc_name ); 
%
% Input Parameters:
%       filespec    filespec of classdef-file, function-file, method-file in class folder         
%       fnc_name    method-name or subfuction-name      
%
% Output parameters:
%       H1_line     H1-line
%
% Description:   
%
% Examples:

%   Folders Containing Class Definitions
%   http://uk.mathworks.com/help/matlab/matlab_oop/organizing-classes-in-folders.html
%   -   Path folders    class definitions in a single "classdef-file"
%   -   Class Folders   class definitions in a single "classdef-file" together with 
%                       additional zero or more method files. A Class Folder contains 
%                       the definition of exactly one class.   
%
%   A Class Folder may contain a PRIVATE folder. All main functions in the private
%   folder are private methods of the class, i.e. equivalent to (Access=private).
%
    narginchk( 1, 2 )

%   TODO:   Release the requirements on filespec, which are
%           1. filespec must be in the Matlab path 
%           2. which( fully_qualified_module_name ) must return filespec.

    type     = fqn2type( filespec2fqn( filespec ) );    
    isClass  = strcmp( type, 'class' );   
    row_list = read_and_trim_souce_code_( filespec );   % remove leading comments etc.  
    [~,file] = fileparts( filespec );                   % file – base name of the file
   
%   One input argument: Search H1-line of classdef or function, i.e first comment line 
%   after the classdef/function statement.
    if nargin == 1
        xpr = [ '^\s*((function)|(classdef)).+?', file ];  % specific enough(?)
        num = regexp( row_list{1}, xpr );
        assert( not(isempty(num)) && num==1     ...
            ,   'get_H1_line:SyntaxError'       ...
            ,   'Illegal line: "%s"', num       )
        H1  = extract_H1_line_( row_list{1+1} );
        return                                                      %   RETURN     
    end
   
%   Two input arguments:   
    xpr = [ '^\s*(function)[^%]+?', fnc_name ];
    files = regexp( row_list, xpr );
    isv = not( cellfun( @isempty, files ) );
    ixf = find( isv, 1, 'first' );
    
%   Several cases ...
    if isempty( ixf )
        %   1. Implicit contructor of class
        if isClass && strcmp( file, fnc_name )
            H1 = 'Implicit constructor';
            return                                                  %   RETURN     
        end
        
        %   2. Method defined in separate file in class folder
        pth = fileparts( filespec );
        sad = dir( fullfile( pth, [fnc_name,'.m'] ) );
        if not(isempty( sad )) 
            ffs = fullfile( pth, sad.name );
            rws = read_and_trim_souce_code_( ffs ); 
            H1  = extract_H1_line_( rws{2} ); 
            return                                                  %   RETURN     
        end
        
        error(  'get_H1_line:CannotFindName'            ...
            ,   'Cannot find function, "%s", in "%s"'   ... 
            ,   fnc_name, filespec                      )
    end
    
    assert( length(ixf)==1, 'get_H1_line:TooMany'   ...
        ,   'More than one function, "%s", in "%s"' ...
        ,   fnc_name, filespec                      )
    
    H1  = extract_H1_line_( row_list{ixf+1} );
end
function    rws = read_and_trim_souce_code_     ( filespec  )   %

    fid = fopen( filespec );
    cac = textscan( fid, '%s', 'Delimiter','\n');
    [~] = fclose( fid );
    rws = strtrim( cac{1} );
    
%   Remove empty lines
    ise = cellfun( @isempty, rws );
    rws( ise ) = [];
    
%   Remove empty comment lines 
    xpr = '^%[% ]*$';
    cac = regexp( rws, xpr );
    isc = not( cellfun( @isempty, cac ) );
    rws( isc ) = [];

%   TODO: Remove multi-line comments. See KeywordSearch>remove_multiline_comments_

%   Remove leading comments, i.e. comments before any code (not needed(?))
    xpr = '^%.*';
    cac = regexp( rws, xpr );
    ixf = find( cellfun( @isempty, cac ), 1, 'first' );
    rws( 1 : ixf-1 ) = [];    

%   Concatenate continuation lines ...   
%   TODO: Rows with only space and ... might cause problems 
    xpr = '^(?:\s*[^%].+)(\.{3})';
    cix = permute( regexp( rws, xpr, 'tokenExtents' ), [2,1] );
    ixr = find( not( cellfun( @isempty, cix ) ) );
    
    len = length( rws );
    for rr = fliplr( ixr )
        if rr == len,   continue                                        %   CONTINUE
        end
        cc = cix{rr}{1}(1);
        rws{rr  } = [ rws{rr}(1:cc-1), rws{rr+1} ];
        rws(rr+1) = [];
    end
end
function    H1  = extract_H1_line_              ( row_str   )   %
    cac = regexp( row_str, '^(?:%+)(?:\s*)(\S.+)$', 'tokens', 'emptymatch' );
    if not( isempty( cac ) )
        H1 = cac{1}{1};
    else
        H1 = 'No H1-line';
    end
end

