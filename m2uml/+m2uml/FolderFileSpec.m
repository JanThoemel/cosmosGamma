classdef    FolderFileSpec < handle                 %
%   Accumulate sets of filespecs, e.g. choosen interactively by a user       
    
%   Design notes:
%   --  sort must be done by the proj-object
%   --  the simplest that can work does not include removal of files

%   See also: FolderFileSpec_test

% TODO: Test for empty list
% Q&D:  I added the method setFolderFileSpec. I had "forgotten" that get.. do not remove 
%       items from the "container". The name should better indicate the behaviour.

%   2011-09-15, poi: There are many too many things being refactored at the same time!
%               1.  It seems as if I once planned to expand the folder-file-list as 
%                   as late as possible. However, the list must be expanded, filtered
%                   and sorted before used. One cannot be sure what will pop up in 
%                   later expansions.
%
%   2012-02-25, poi: **one** getNext( 'Format', ... )   

    properties  ( SetAccess = private )                         %
        FolderFileSpecList
        ExcludeFolderFileSpecList = cell( 2, 0 );
        isDirty
        next            % Q&D: next+1 by both getNextFullFile and getNextFolderFileName
    end  
    properties  ( SetAccess = public, GetAccess = public )      %
        FileFilter          % function_handle from the proj-object
        FileSorter          % function_handle from the proj-object
        ImportPeriod        % moved to here from TrenddataReader        <<<<<<<<<<<<<
    end
    methods     ( Access = public )                             %
        function    this =  FolderFileSpec              ( varargin  )   %
            
            persistent ipp      % because of efficiency, persistent should be first
            
            this.FolderFileSpecList = cell( 2,0 );
            this.isDirty            = true;
            this.next               = 0;
            
            if nargin >= 1
                if isempty( ipp )
                    ipp = InputPreprocessor( { 
                                2 'FileFilter'  []  {'function_handle'}  {'addOptDummy'} 
                                2 'FileSorter'  []  {'function_handle'}  {'addOptDummy'}
                                } );
                end
                ipv = ipp.parse( varargin{:} );   

                this.FileFilter = ipv.FileFilter;
                this.FileSorter = ipv.FileSorter;
            end
        end
        function            addFolderFileSpec           ( this, input ) %
            % add only if empty or isdirty - do not add to expanded     .
            %
            %   ffs      
            assert( this.isDirty                                    ...
                ,   'FolderFileSpec:addFolderFileSpec:NotLegal'     ...
                ,   'Cannot add to expanded folder-file-list'       )
            
            if ischar( input )
                ffs_ca = filespec2cell( input );
                
            elseif  iscellstr( input )
                
                if size(input,1) == 1
                    len = size( input, 2 );
                    ffs_ca  = cell( 2, len );
                    for jj = 1 : len
                        ffs_ca( :, jj ) = filespec2cell( input{jj} );
                    end
                    
                elseif size(input,1) == 2
                    ffs_ca  = input;
                else
                    error(  'FolderFileSpec:addFolderFileSpec:IllegalDim'           ...
                        ,   'Illegal size of input: "%s"; should be <1xn> or <2xn>' ...
                        ,   size(input)                                             )
                end
            else
                error(  'FolderFileSpec:addFolderFileSpec:IllegalType'  ...
                    ,   'Input is not char or cellarray of strings: %s' ...
                    ,   class(input)                                    )
            end
            this.FolderFileSpecList = cat( 2, this.FolderFileSpecList, ffs_ca );
            this.isDirty = true;
        end
        function            setFolderFileSpec           ( this, ffs )   %
            this.FolderFileSpecList = ffs;
            this.isDirty = true;
        end
        function            addExcludeFolderFileSpec    ( this, ffs )   %
            % add only if empty or isdirty - do not add to expanded
            %
            %   ffs      
            assert( this.isDirty                                        ...
                ,   'FolderFileSpec:addExcludeFolderFileSpec:NotLegal'  ...
                ,   'Cannot add to expanded folder-file-list'           )
            
            if ischar( ffs )
                ffs = filespec2cell( ffs );
            end
            this.ExcludeFolderFileSpecList = cat(2, this.ExcludeFolderFileSpecList, ffs );
            this.isDirty = true;
        end
        function            setExcludeFolderFileSpec    ( this, ffs )   %
            this.FolderFileSpecList = ffs;
            this.isDirty = true;
        end
        function            excludeFolderFileSpec       ( this, ffs )   %
            % Q&D for Pennfaktare - only if isDirty
            
            assert( this.isDirty                                    ...
                ,   'FolderFileSpec:excludeFolderFileSpec:NotLegal' ...
                ,   'Cannot add to expanded folder-file-list'       )
            
            if ischar( ffs )
                ffs = filespec2cell( ffs );
            end
            this.ExcludeFolderFileSpecList = cat( 2, this.ExcludeFolderFileSpecList, ffs);
            this.isDirty = true;
        end
        function    ffn =   getNextFolderFileName       ( this      )   %
            this.expand_filter_and_sort;
            ffn = this.FolderFileSpecList( :, this.next );         
            this.next = this.next + 1;
        end
        function    fs  =   getNextFullFile             ( this      )   %
            this.expand_filter_and_sort;
            fs  = fullfile( this.FolderFileSpecList{ 1, this.next } ...
                        ,   this.FolderFileSpecList{ 2, this.next } );         
            this.next = this.next + 1;
        end
        function    ish =   hasNext                     ( this      )   %
            this.expand_filter_and_sort;
            ish = not( this.isDirty )                                   ...
                  && size( this.FolderFileSpecList, 2 ) >= this.next    ; 
        end
        function            reset                       ( this      )   %
            if not( this.isDirty )
                this.next = 1;
            end
        end
    end
        
    methods     ( Access = private )                            %
        function            expand_filter_and_sort      ( this      )   %
            
            if  not( this.isDirty )        
                return                                                      %   return
            end
            if isempty ( this.FolderFileSpecList )
                this.isDirty = true;
                this.next    = 0; 
                return                                                      %   return
            end

%   expand
            this.FolderFileSpecList = expand_folder_file_spec_list_ ...
                    ( 'FolderFileSpecList', this.FolderFileSpecList );
            
            if not( isempty( this.ExcludeFolderFileSpecList ) )
                this.ExcludeFolderFileSpecList = expand_folder_file_spec_list_  ...
                        ( 'FolderFileSpecList', this.ExcludeFolderFileSpecList  );
            end
                                
            ix_trouble = TroubledFilesSpec( this.FolderFileSpecList );
            if not( isempty( ix_trouble ) ) 
                this.FolderFileSpecList( :, ix_trouble ) = [];
            end
            
%   filter, including sort
            if not( isempty( this.ImportPeriod ) || isempty( this.FileFilter ) )

                this.FolderFileSpecList = this.FileFilter                   ...
                                        (   this.FolderFileSpecList         ...
                                        ,   datenum( this.ImportPeriod )    );
                                    
            elseif not( isempty( this.FileFilter ) )
                this.FolderFileSpecList = this.FileFilter( this.FolderFileSpecList );
            end

            if not( isempty( this.ExcludeFolderFileSpecList ) )
                
                exclude_folders = unique( this.ExcludeFolderFileSpecList( 1, : ) );

                to_be_excluded   = false( 1, size( this.FolderFileSpecList, 2 ) );

                for excl = exclude_folders

                    is_excl =       strcmpi( excl, this.ExcludeFolderFileSpecList(1,:) );
                    ix_incl = find( strcmpi( excl, this.FolderFileSpecList(1,:) ) );

                    for ix = ix_incl
                        if any( strcmp( this.FolderFileSpecList(2,ix)               ...
                                    ,   this.ExcludeFolderFileSpecList(2,is_excl) ) )
                            to_be_excluded( ix ) = true;
                        end
                    end
                end
                this.FolderFileSpecList( :, to_be_excluded ) = [];
            end
            
%           Warning: 'rows' flag is ignored for cell arrays.                 
%           [ ~, ix1, ix2 ] = unique( transpose( this.FolderFileSpecList ), 'rows' );
%           See: SortTestCode, SortTest, piaMultiColumnListbox/SortEntries

            if not( isempty( this.FileSorter ) || isempty( this.FolderFileSpecList ) )
                this.FolderFileSpecList = this.FileSorter( this.FolderFileSpecList );
            end

            this.isDirty = false;
            this.next    = 1; 
        end
    end
end
function    cac = filespec2cell( str )                          %

    if any( ismember( '?*', str ) ) 
        [ folder, file, ext ] = fileparts( str );
    else
        %   What if str is the name of a function in a package, e.g. mypack.myfoo? Bug or
        %   feature, exist does not find en existing mypack.myfoo.
        if exist( str, 'file' ) == 2
            buf = which( str );
            if not( isempty( buf ) )
                str = buf;
            end
            [ folder, file, ext ] = fileparts( str );
            if isempty( ext )
                [ folder, file, ext ] = fileparts( which( str ) );
            end
        else
            %   TODO: the file doesn't exist ???
            buf = which( str );
            if not( isempty( buf ) )
                str = buf;
            end
            [ folder, file, ext ] = fileparts( str );
        end
    end
    cac{ 1, 1 } = folder;
    cac{ 2, 1 } = [ file, ext ];
end
function    out = expand_folder_file_spec_list_( varargin )     %

    persistent ipp
    if isempty( ipp )
        ipp = InputPreprocessor( {
            3 'FolderFileSpecList'  nan     {'cell'}    {'CellStr', 'size',[2,nan] }
            } );
    end
    ipv = ipp.parse( varargin{:} );
    
    folder_file_spec_list = ipv.FolderFileSpecList; 

    ixFolderWildCard = find( or(                                         ...
      not( cellfun( 'isempty', strfind(folder_file_spec_list(1,:),'*')) ) ... 
    , not( cellfun( 'isempty', strfind(folder_file_spec_list(1,:),'?')) ) ));

    if not( isempty( ixFolderWildCard ) )

        castr = folder_file_spec_list( 1, ixFolderWildCard );

        assert( not( any( cellfun( @(s) strcmp(s(end),'\'), castr ) ) )     ...
            ,   'FolderFileSpec:expand_filter_sort:IllegalFileSep'          ...  
            ,   'Foldername with wildcard must not be terminated with filesep'  )

        for ix = 1 : numel( castr )     % assert for '*' and '?', respectively 

            assert(     isempty( find( any( castr{ix}=='*' ), 1 ) ) ...
                    ||      find( castr{ix}=='*', 1, 'first' )      ...
                        >=  find( castr{ix}=='\', 1, 'last'  )      ...
            ,   'FolderFileSpec:expand_filter_sort:IllegalWildcardPosition' ...  
            ,   'Wildcards in folder names must be in the bottum subfolder' )

            assert(     isempty( find( any( castr{ix}=='?' ), 1 ) ) ...
                    ||      find( castr{ix}=='?', 1, 'first' )      ...
                        >=  find( castr{ix}=='\', 1, 'last'  )      ...
            ,   'FolderFileSpec:expand_filter_sort:IllegalWildcardPosition' ...  
            ,   'Wildcards in folder names must be in the bottum subfolder' )
        end

        str = cell( 2, 0 );
        for ix = 1 : size( folder_file_spec_list, 2 )
            if any( ix == ixFolderWildCard)
                folder  = folder_file_spec_list{ 1, ix };
                sad = folder_list( folder );

                folder( find( folder == '\', 1, 'last' ) : end ) = [];
                fln = folder_file_spec_list( 2, ix );
                cas = cellfun( @(s) fullfile( folder, s )   ...
                            , {sad.name}, 'uni', false      );
                str = cat( 2, str, cat( 1, cas, repmat( fln, 1, numel(cas) ) ) );
            else
                str = cat( 2, str, folder_file_spec_list( :, ix ) );
            end
        end
        folder_file_spec_list = str;
    end

    ixFileWildCard  = find( or                                              ...
    ( not( cellfun( 'isempty', strfind(folder_file_spec_list(2,:),'*')) ) ... 
    , not( cellfun( 'isempty', strfind(folder_file_spec_list(2,:),'?')) ) ));

    if not( isempty( ixFileWildCard ) )

        str = cell( 2, 0 );
        for ix = ixFileWildCard
            ffs = fullfile( folder_file_spec_list{ 1:2, ix } );
            sad = dir( ffs  ); 

            sad( [ sad.isdir ] ) = [];

            assert( not( isempty( sad ) )                               ...
                ,   'FolderFileSpec:expand_filter_sort:NoFilesFound'    ...
                ,   'No files found for, "%s"'                          ...
                ,   value2short( ffs )                                  )

            str = cat( 2, str, cat( 1                                       ...
                    , repmat( folder_file_spec_list(1,ix), 1,numel(sad) )   ...
                    , { sad.name }                                          ) );
        end

        if  not( isempty( str ) )
            folder_file_spec_list( :, ixFileWildCard ) = [];
            folder_file_spec_list( :, end+1 : end+size(str,2) ) = str; 
        end
    end
    out = folder_file_spec_list;
end
