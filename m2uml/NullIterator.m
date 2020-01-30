classdef  NullIterator < handle
    
    %   HFDP p372
   
    methods
        function val = next( this )     
            val = {};
            variable_not_used( this )
        end
        function has = hasNext( this )  
            has = false;
            variable_not_used( this )
        end
        function remove( this )         
            variable_not_used( this )
            me = MException( 'NullIterator:remove:UnsupportedOperation' ...
                            , 'remove is not supported by NullIterator' );
            throw( me )
        end
    end
end
