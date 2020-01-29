function    isc = isClassdef( filespec )
%
%
% See also: fqn2type, filespec2fqn

%%
% cadir = findfiles( 'h:\m\FEX\GUI\GuiLayoutTbx\layout\**\*.m' );

%%
% ffs =
% h:\m\FEX\GUI\GuiLayoutTbx\layout\+uiextras\Grid.m
% exist( ffs )
% ans =
%      2
% exist( 'uiextras.Grid' )
% ans =
%      8

%{
isc = isClassdef( 'h:\m\PiaRepos\m2uml\@m2uml\PlantUmlAdapter.m' );
isc = isClassdef( 'h:\m\PiaRepos\m2uml\+m2uml\m2uml.m' );
isc = isClassdef( 'h:\m\PiaRepos\m2uml\+m2uml\run.m' );
isc = isClassdef( 'h:\m\FEX\InUse\@stop\stop.m' );
isc = isClassdef( 'h:\m\FEX\InUse\TreeDataStructure\@tree\tree.m' );
%}

variable_not_used( filespec )
     
% len = size( cadir, 2 );
% isClassDef = false( 1, len );
% 
% for  jj = 1 : len
    
%     caf = cadir( :, jj );
%     ffs = fullfile( caf{1}, caf{2} );
    
%   Assumption: Only one appearance of "@" in a filespec of a class definition, i.e.
%   no nested class definitions.

    str = regexp( filespec, '(\@|\+)', 'match', 'once' );
    if isempty( str )
        filespec_type = '-';
    else
        filespec_type = str;
    end
    
    switch filespec_type
        case '+'
            % A package may contain a @-folder            
            cac = regexp( filespec, '\+', 'split', 'once' );
            [p1,p2,~] = fileparts( cac{2} );
            if isempty( strfind( p2, '@' ) )
                item_name = cat( 2, strrep(p1,filesep,'.'), '.', p2 );
            else
                
            end
        case '@'
            % A @-folder may not contain a package 
            cac = regexp( filespec, '@', 'split', 'once' );
            [p1,p2,~] = fileparts( cac{2} );
            if strcmp( p1, p2 )
                item_name = p1;
            else
                item_name = 'separate_class_method'; 
            end
        case '-'
            [~,item_name,~] = fileparts( filespec );
        otherwise
    end
    isc = exist( item_name, 'class' ) == 8;
end
