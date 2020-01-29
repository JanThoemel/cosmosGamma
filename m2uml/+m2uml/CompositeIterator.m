classdef CompositeIterator <  handle
%    
%   HFDP p369     
    
    properties
%       The stack can hold instancies of Iterator, instancies of ListIterator
%       and instancies of CompositeIterator
        ID_         = '';
        Created_    = nan;
        stack       = [];
    end
    
    methods
        function this = CompositeIterator( iterator )
            this.ID_        = nextID();
            this.Created_   = now;
            this.stack      = m2uml.Stack();
            this.stack.push( iterator ) 
        end
        function    component = next( this )
        %   Returns the next element in the iteration 
        %
        %   Code fixed accourding to jstupid, see below 
        
            if this.hasNext()
                iterator  = this.stack.peek();  
                component = iterator.next();
%                 if  isa( component, 'Composite' )                   ...             
%                     && not( isa( iterator, 'CompositeIterator' )    )
%                     tmp = component.createIterator();
%                     this.stack.push( tmp )
%                 end
            else
                component = [];
            end
        end        
        function    has = hasNext( this )
        %   Returns true if the iterator has more components
        
            if this.stack.isempty()
                has = false;
            else
                iterator = this.stack.peek();
                if iterator.hasNext()
                    has = true;
                else
                    this.stack.pop();
                    has = this.hasNext();
                end
            end
        end
        function    remove( this ) 
            variable_not_used( this )
            me  = MException( 'CompositeIterator:remove:UnsupportedOperation'   ...
                            , 'Remove not implemented'                          );
            throw( me )
        end
        function    show( this )
            fprintf( 'CompositeIterator: %s\n', this.ID_ )
            this.stack.show
        end
        function    varargout = TestProbe( this, MethodName, varargin )
            [ varargout{ 1 : nargout } ] = this.( MethodName )( varargin{:} );
        end
    end
end
%{
% http://forums.oreilly.com/topic/2501-iterator-example-broken/
% 
% Iterator Example Broken
% jstupid 
% Posted 30 July 2008 - 01:40 PM
% 
% I first noticed this problem two years ago when leading the discussion of Chapter 9 
% for my company's design patterns study group. I haven't seen a new edition of the book, 
% and the edition available today through Safari online has the same problem. 
% 
% The final section of chapter nine discusses how to create iterators to print a list of 
% the vegetarian items in the cafe menu. However, the example code actually traverses 
% some portions of the menu twice, leading to duplicated output. The figure on page 374 
% shows the problem: Apple Pie, Cheesecake and Sorbet are all printed twice. 
% 
% The "quick fix" is to change the CompositeIterator next() function: 
% 
% Code: 
% public class CompositeIterator 
%    implements Iterator 
% { 
% ... 
% public Object next() 
% { 
%    if (hasNext()) { 
%       Iterator iterator = (Iterator)stack.peek(); 
%       MenuComponent component =      
%             (MenuComponent)iterator.next(); 
%     
%       if (component instanceof Menu && 
%            !(iterator instanceof CompositeIterator)) { 
%             stack.push(component.createIterator()); 
%       } 
%       return component; 
%    } else { 
%       return null; 
%    } 
% } 
% ... 
% } 
% 
% 
% The original code can be found on page 369: 
% 
% Code: 
% public class CompositeIterator 
%    implements Iterator 
% { 
% ... 
% public Object next() 
% { 
%    if (hasNext()) { 
%       Iterator iterator = (Iterator)stack.peek(); 
%       MenuComponent component =      
%             (MenuComponent)iterator.next(); 
%     
%       if (component instanceof Menu) { 
%             stack.push(component.createIterator()); 
%       } 
%       return component; 
%    } else { 
%       return null; 
%    } 
% } 
% ... 
% } 
% 

% The added conditional checks to see if the iterator is already composite. If not, a new 
% composite iterator is created for the submenu. Without this check, multiple iterators are 
% created for subtrees which causes duplicated output. 
% 
% The moral of this story for my discussion group was "Don't copy code you don't understand 
% and always re-test any code you copy; even technical authors can make mistakes." 
% 
% A better fix might be a more robust set of tree iterators allowing for more control of 
% the iteration order (preorder, postorder, breadth-first, etc). Of course, this complexity 
% should only be added if you need it!
%}
