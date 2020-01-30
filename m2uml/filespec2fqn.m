function    [ fnq, folder, ext ] = filespec2fqn( filespec )
% filespec2fqn takes a filespec of an m-file and returns the fully qualified name,
% i.e. the reverse of WHISH regarding m-files.
%
%   See also: m2uml\private\filespec2namespec.

%   TODO: write down the definition of fully qualified name, fqn. See documentation of 
%         WHICH and fnq2type.
%       
%   h:\m\FEX\InUse\TreeDataStructure is in the Matlab search path. tree is a class in the
%   folder, ...\@tree. chop is a method of tree defined in a separate m-file.
%
%     which('tree.chop')
%     'tree.chop' not found.
%     which('tree>chop' )
%     C:\Program Files\MATLAB\R2016a\toolbox\control\ctrlobsolete\chop.m
%     which('tree>chop', '-all' )
%     C:\Program Files\MATLAB\R2016a\toolbox\control\ctrlobsolete\chop.m
%     H:\m\FEX\InUse\TreeDataStructure\@tree\chop.m     % tree method
%     path
% 		MATLABPATH
%       H:\m\FEX\InUse\TreeDataStructure
%
%   # Is which('tree>chop') a documented use of which? I guess not.
%   # How come tree>chop is "shadowed" 

%   TODO: replace m2uml\private\filespec2namespec by filespec2fqn in ClassNode and
%   Relationship
%

%{
[ fqn, folder ] = filespec2fqn( 'h:\m\PiaRepos\m2uml\@m2uml\PlantUmlAdapter.m' );
[ fqn, folder ] = filespec2fqn( 'h:\m\PiaRepos\m2uml\+m2uml\m2uml.m' );
[ fqn, folder ] = filespec2fqn( 'h:\m\PiaRepos\m2uml\+m2uml\run.m' );
[ fqn, folder ] = filespec2fqn( 'h:\m\FEX\InUse\@stop\stop.m' );
[ fqn, folder ] = filespec2fqn( 'h:\m\FEX\InUse\TreeDataStructure\@tree\tree.m' );
[ fqn, folder ] = filespec2fqn( 'h:\m\PiaRepos\m2uml\lib\uml2doc.m' );
%}
    
    str = regexp( filespec, '(\@|\+)', 'match', 'once' );
    if isempty( str )
        folder_type = '-';
    else
        folder_type = str;
    end
    
    switch folder_type
        case '+'
            % A package may contain a @-folder
            %ca1     = regexp( filespec, '\\\+', 'split', 'once' );
            ca1     = regexp( filespec, strcat(filesep,filesep,'\+'), 'split', 'once' );
            folder  = ca1{1};  
            [p1,p2,ext] = fileparts( ca1{2} );
            if isempty( strfind( p1, '@' ) )
                str = strrep( p1, filesep, '.' );
                fnq = cat( 2, str, '.', p2 );
            else
                ca2 = regexp( p1, strcat(filesep,'\@'), 'split', 'once' );
                if strcmp( ca2{2}, p2 )
                    str = strrep( ca2{1}, [filesep,'+'], '.' );
                    fnq = cat( 2, str, '.', p2 ); 
                else
keyboard % empty else                   
                end
            end
        case '@'
            % NOTE: ...toolbox\signal\signal\@fdesign\@bandpass\setcurrentspecs.m'
            % A @-folder may not contain a package 
            cac = regexp( filespec, strcat(filesep,'\@'), 'split', 'once' );
            folder  = cac{1};
            [p1,p2,ext] = fileparts( cac{2} );
            if strcmp( p1, p2 )
                fnq = p1;
            else
% NOTE: "class>method"                
                fnq = sprintf( '%s>%s', p1, p2 ); 
            end
        case '-'
            [ folder, fnq, ext ] = fileparts( filespec );
        otherwise
keyboard % empty otherwise           
    end
end
