classdef    Stack < handle

%   The Stack class represents a last-in-first-out (LIFO) stack of objects. 
%   The usual push and pop operations are provided, as well as a method to 
%   peek at the top item on the stack, a method to test for whether the stack 
%   is empty, and a method to search the stack for an item and discover how 
%   far it is from the top. 
%
%   When a stack is first created, it contains no items. 
%
%   Mimic of java.util Class Stack
    
    
    properties ( SetAccess = private, GetAccess = public )
        ID_         = '';
        Created_    = nan;
        caStack     = cell( 0 );
    end
    
    methods ( Access = public )
        function this = Stack(  )
            this.ID_        = nextID;
            this.Created_   = now;
        end
        function       push( this, val )
            this.caStack( end+1 ) = { val };
        end
        function val = pop( this )
            if not( this.isempty )
                val = this.caStack{ end };
                this.caStack( end ) = []; 
            else
                val = [];
            end
        end
        function val = peek( this )
             val = this.caStack{ end };
        end
        function ise = isempty( this )
            ise = isempty( this.caStack ); 
        end
        function n   = search( this, obj )
%           Returns the position of an object, obj, on this stack. 
%           n = the distance from the top of the stack (n=1 for top object )
%           n = -1 when the object is not on the stack.
            
            n   = -1;
            if  not( this.isempty )
                for ii = numel( this.caStack ) : -1 : 1 
                    if  eq( this.caStack{ ii }, obj )
                        n   = numel( this.caStack ) - ii + 1;
                    end
                end
            end
        end
        function       show( this )
            fprintf( 'Stack: %s, <top-bottom>\n', this.ID_ )
            for ii = numel( this.caStack ) : -1 : 1
                item = this.caStack{ii};
                if isa( item, 'handle' )
                    if strcmp( 'ID_', properties(item) )
                        fprintf( ' %s: %s', class(item), item.ID_ )
                    else
                        printf( ' %s', class(item) )
                    end
                elseif ischar( item )
                    printf( ' %s', item ) 
                else
                    error(  'Stack:show:Failed' ...
                        ,   'Cannot show: "%s"' ...
                        ,   value2short( item ) )
                end
                fprintf( '%s', ',' )
            end
            fprintf( '\n' )
        end
    end
end
