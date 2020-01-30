classdef  ListIterator < handle
% ListIterator mimics the Java ListIterator. 
%
%   An iterator for lists that allows the programmer to traverse the list in either 
%   direction, modify the list during iteration, and obtain the iterator's current 
%   position in the list. A ListIterator has no current element; its cursor position 
%   always lies between the element that would be returned by a call to previous() 
%   and the element that would be returned by a call to next(). In a list of length n, 
%   there are n+1 valid index values 
%
%            Element(1)   Element(2)   ... Element(n)           (poi removed Element(0) )
%          ^            ^            ^               ^
%   Index: 1            2            3               n+1
%
%  Ref: http://docs.oracle.com/javase/1.4.2/docs/api/index.html
    
    properties( SetAccess = protected, GetAccess = public )
        ID_         = '';
        Created_    = nan;
        caList      = cell( 0 );
        ixNext      = 0;
        ixCur       = 0;  % index of the the last element returned by next() or previous()
    end
   
    methods
        
        function this = ListIterator( ca_list )
            this.ID_        = nextID;
            this.Created_   = now;
            if (exist('ca_list','var')==1) && numel( ca_list ) >= 1
                this.caList = ca_list;
                this.ixNext = 1;   
            else    % 2014-01-30, poi: added (exist('ca_list','var')==2) and "else"
                this.caList = cell(0);
                this.ixNext = nan;   
            end
        end
        
        function add( this, obj )
%           Inserts the specified element into the list. The element is inserted 
%           immediately before the next element that would be returned by next, if any, 
%           and after the next element that would be returned by previous, if any. (If 
%           the list contains no elements, the new element becomes the sole element on the
%           list.) The new element is inserted before the implicit cursor: a subsequent 
%           call to next would be unaffected, and a subsequent call to previous would 
%           return the new element. (This call increases by one the value that would be 
%           returned by a call to nextIndex or previousIndex.)

            if this.ixNext == 0
                this.caList = { obj };
                this.ixNext = 1; 
            elseif this.ixNext == 1
                this.caList = cat( 2, {obj }, this.caList );
                this.ixNext = 2; 
            else
                this.caList = cat( 2, this.caList(1,1:this.ixNext-1), {obj }    ...
                                    , this.caList(1,this.ixNext:end )           );

                this.ixNext = this.ixNext + 1;
            end
            this.ixCur = 0;
        end
        
        function set( this, obj )
%           Replaces the last element returned by next or previous with the specified 
%           element (optional operation). This call can be made only if neither 
%           ListIterator.remove nor ListIterator.add have been called after the last 
%           call to next or previous.      

            if this.ixCur >= 1;
                this.caList( 1, this.ixCur )  = { obj };
            else
                % ListIterator:IllegalState
            end
            this.ixCur = 0;
        end
        
        function remove( this )
%           Removes from the list the last element that was returned by next or 
%           previous. This call can only be made once per call to next or previous. 
%           It can be made only if ListIterator.add has not been called after the 
%           last call to next or previous.       
            
            if this.ixCur >= 1;
                this.caList( 1, this.ixCur )  = [];
            else
                ME  = MException( 'ListIterator:remove:IllegalState', 'Illegal state' );
                throw( ME );
            end
            
        end
        
        function obj = previous( this )

            if this.ixNext >= 2
                obj = this.caList{ this.ixNext-1 };
                this.ixCur  = this.ixNext - 1;
                this.ixNext = this.ixNext - 1;
            else
                ME = MException('ListIterator:previous:NoSuchElement','No such element');
                throw( ME );
           end
        end
        
        function obj = next( this )
            if this.ixNext >= 1
                obj = this.caList{ this.ixNext };
                this.ixCur  = this.ixNext;
                this.ixNext = this.ixNext + 1;
            else
                me  = MException( 'ListIterator:next:NoSuchElement', 'No such element' );
                throw( me );
            end
        end
        function has = hasNext( this )
            has = ( this.ixNext <= numel( this.caList ) );
        end
        function has = hasPrevious( this )
            has = ( this.ixNext <= 2 );
        end
        function    show( this )
            fprintf( 'ListIterator: %s,  ixNext: %u,  ixCur: %u\n'  ...
                    , this.ID_, this.ixNext, this.ixCur             )
                
            for ii = 1 : numel( this.caList )  
                
                if ii >= this.ixNext,   font_color = [ 1, 0, 1 ]; %#ok<NASGU>
                else                    font_color = [ 0, 0, 1 ]; %#ok<NASGU>
                end
                
                item = this.caList{ii};
                if isa( item, 'handle' )
                    if strcmp( 'ID_', properties(item) )
                        fprintf( ' %s: %s', class(item), item.ID_ )
                    else
                        fprintf( ' %s', class(item) )
                    end
                elseif ischar( item )
                    printf( ' %s', item ) 
                else
                    error(  'ListIterator:show:Failed' ...
                        ,   'Cannot show: "%s"'     ...
                        ,   value2short( item )     )
                end
                fprintf( '%s', ',' )
            end
            fprintf( '\n' )
        end
    end
end
