classdef    ArrayList  < handle
% ArrayList mimics the Java ArrayList and it can store Matlab objects. 
%
%   An ordered collection (also known as a sequence). The user of this interface has 
%   precise control over where in the list each element is inserted. The user can 
%   access elements by their integer index (position in the list), and search for 
%   elements in the list.
%
%   ArrayList is based on a cell array.
%
    properties ( SetAccess = private, GetAccess = public )
        cell_row    = cell( 1, 0 ); 
        ID_         = '';
        Created_    = nan;
    end
    
    methods
        function    this = ArrayList            ( list )                
            
            if  isempty( this.ID_ ) 
                this.ID_        = nextID;
                this.Created_   = now;
            else
                warning('ArrayList:ArrayList:NotNew'                ...
                    ,   'This instance of ArrayList has ID: "%s"'   ...
                    ,   this.ID_                                    )
            end
            
            if exist( 'list', 'var' )
                
                assert( numel(list) == 1  ||  iscell(list)                          ...
                        , 'ArrayList:Constructor:IllegalArgument'                   ...
                        , 'The first argument, "%s", shall be a scalar'             ...
                        , inputname(1)                                              )
        
                if iscell( list ),  this.cell_row = list;
                else                this.cell_row = { list };
                end
                % What about val beeing a container object?         
            end
        end
        function    add                         ( this, obj, ix )       
%           add inserts the specified element in the list. Java has two add-methods 
%           with different signatures; add(ix,obj) and add(obj). In Matlab that would
%           be add(obj[,ix]) - I guess. 

            narginchk( 2, 3 )
            
            if nargin == 2
                if isempty( this.cell_row )
                    this.cell_row = {obj};
                else
                    this.cell_row( 1, end+1 ) = {obj};
                end
            else
                assert( ix>=1 && ix<=numel(this.cell_row)           ...
                    ,   'm2uml:ArrayList:IllegalIndexValue'         ...
                    ,   'Illegal value of ix, "%s". Max length: %d' ...
                    ,   value2short(ix), numel(this.cell_row)       )
                
                    if ix == 1
                        this.cell_row = cat( 2, {obj}, this.cell_row ); 
                    else 
                        this.cell_row = cat( 2, this.cell_row(1,1:ix-1), {obj}  ...
                                            ,   this.cell_row(1,ix:end)         );
                    end
            end
        end
        function    addAll                      ( this, caObj, ix )     
%           addAll inserts all of the elements in the specified cell array into  
%           this list, starting at the specified position.

            if exist( 'ix', 'var' )
                assert( ( isflint(ix) || isinteger(ix) ) && numel(ix) == 1          ...
                        , 'ArrayList:addAll:IllegalArgument'                        ...
                        , 'The second argument, "%s", shall be a single index: %f'  ...
                        , inputname(2), ix                                          )
            end
            
            switch nargin
                case 1
                    % error something
                case 2
                    this.cell_row = cat( 2, this.cell_row, caObj );
                case 3
                    if ix == 0
                        % error something
                    elseif ix == 1
                        this.cell_row = cat( 2, caObj, this.cell_row ); 
                    elseif ix <= numel( this.cell_row )
                        this.cell_row = cat( 2, this.cell_row(1,1:ix-1) ...        
                                            ,   caObj                   ...
                                            ,   this.cell_row(1,ix:end) );
                    else
                        % error something
                    end
                otherwise
                    % error something
            end
        end
        function    remove                      ( this, obj )           
            this.cell_row( cellfun( @(c) obj == c, this.cell_row ) ) = []; 
        end
        function    clear                       ( this )                
            this.cell_row = cell( 1, 0 );
        end
        function    obj = get                   ( this, ix )            
            try 
                obj = this.cell_row{ 1, ix };
            catch me
                rethrow( me );
            end
        end
        function    itr = listIterator          ( this )                
            itr = m2uml.ListIterator( this.cell_row );            
        end
        function    n   = size                  ( this )                
            n   = numel( this.cell_row );
        end
        function    set                         ( this, ix, obj )       
            this.cell_row( 1, ix ) = {obj}; 
        end
        function    show                        ( this )                
            fprintf( 'ArrayList: %s\n', this.ID_ )
            for ii = 1 : numel( this.cell_row )  
                item = this.cell_row{ii};
                if isa( item, 'handle' )
                    if strcmp( 'ID_', properties(item) )
                        fprintf( ' %s: %s', class(item), item.ID_ )
                    else
                        fprintf( ' %s', class(item) )
                    end
                elseif ischar( item )
                    fprintf( ' %s', item ) 
                else
                    error(  'ArrayList:show:Failed' ...
                        ,   'Cannot show: "%s"'     ...
                        ,   value2short( item )     )
                end
                fprintf( '%s', ',' )
            end
            fprintf( '\n' )
        end
    end
end
