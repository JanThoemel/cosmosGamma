function    [ is_class, constructor ] = filespec2constructor_name( filespec )
% filespec2constructor_name takes the filespec of an m-file and returns 

%{
[isc,cname] = filespec2constructor_name( 'h:\m\PiaRepos\m2uml\@m2uml\PlantUmlAdapter.m' );
[isc,cname] = filespec2constructor_name( 'h:\m\PiaRepos\m2uml\+m2uml\m2uml.m' );
[isc,cname] = filespec2constructor_name( 'h:\m\PiaRepos\m2uml\+m2uml\run.m' );
[isc,cname] = filespec2constructor_name( 'h:\m\FEX\InUse\@stop\stop.m' );
[isc,cname] = filespec2constructor_name( 'h:\m\FEX\InUse\TreeDataStructure\@tree\tree.m');
%}
    
    if not( isClassdef( filespec ) )
        is_class    = false;       
        constructor = '';
        return
    else
        is_class    = true;       
    end
    
    str = regexp( filespec, '(\@|\+)', 'match', 'once' );
    if isempty( str )
        folder_type = '-';
    else
        folder_type = str;
    end
    
    switch folder_type
        case '+'
            % A package may contain a @-folder
            %ca1 = regexp( filespec, '\\\+', 'split', 'once' );
            ca1 = regexp( filespec, '\+', 'split', 'once' );
            [p1,p2,~] = fileparts( ca1{2} );
            if isempty( strfind( p1, '@' ) )
                constructor = p2;
            else
                ca2 = regexp( p1, strcat(filesep,'\@'), 'split', 'once' );
                if strcmp( ca2{2}, p2 )
                    constructor = '';
                else
keyboard % empty else                   
                end
            end
        case '@'
            % NOTE: ...toolbox\signal\signal\@fdesign\@bandpass\setcurrentspecs.m'
            % A @-folder may not contain a package 
            cac = regexp( filespec, strcat(filesep,'\@'), 'split', 'once' );
            [p1,p2,~] = fileparts( cac{2} );
            if strcmp( p1, p2 )
                constructor = p2;
            else
                constructor = '';
            end
        case '-'
            constructor  = '';
        otherwise
keyboard % empty otherwise           
    end
end

