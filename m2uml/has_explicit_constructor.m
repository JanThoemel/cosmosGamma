function    hec = has_explicit_constructor( file_name ) 
  
    filespec = which( file_name, '-all' );   
    
    ixf = strfind( filespec, matlabroot );
    is_under_matlab_root = not( cellfun( @isempty, ixf ) );
    filespec( is_under_matlab_root ) = [];
    
    assert( not( isempty( filespec ) )              ...
        ,   'has_explicit_constructor:FileNotFound' ...
        ,   'File not found: "%s"'                  ...
        ,   filespec                                )

    assert( ischar(filespec) || numel(filespec) == 1    ...
        ,   'has_explicit_constructor:ShadowFile'       ...
        ,   'There are more than one file named: "%s"'  ...
        ,   file_name                                   )
    
    filespec    = char( filespec );
    [ ~, mfn ]  = fileparts( filespec );
    
    ckc = checkcode_( filespec );
    ckc = ckc( strncmp( 'S0', {ckc.message}, 2 ) );
    cac = cellfun( @(str) regexp(str,'\s++','split'), {ckc.message}, 'uni', false );
    fnc = cellfun( @(c) c{4}, cac, 'uni', false );    
    
    hec = ismember( mfn, fnc ); 
end
function    sam = checkcode_( filespec )    %   2016-12-01, poi:       
    str = evalc('checkcode( ''-calls'', char( filespec ) )');
    cac = textscan( str, '%s', 'Delimiter', '\n' );
    sam = cell2struct( cac{1}, {'message'}, 2 );
    ise = cellfun( @isempty, {sam.message}, 'uni',true );
    sam(ise) = []; % empty rows
    variable_not_used( filespec )
end
