classdef  ScriptComposite < handle  % < m2uml.ScriptComponent
    
    properties 
        ComponentList   % = ArrayList.empty
        Name            % = '';
        Description     % = '';

        ID_         = nextID
        Created_    = now
    end
    
    methods
        function    this = ScriptComposite( name, description )         
           
            this.ID_            = nextID;
            this.Created_       = now;
            this.ComponentList  = m2uml.ArrayList();
            
            if nargin >=1
                this.Name           = name;
                this.Description    = description;
            end
        end
        %
        function    render                      ( this, depth       )   
            
            uml2doc.addString( sprintf( '%s%s %s'           ...
                                    ,   indentation(depth)  ...
                                    ,   this.ID_            ...
                                    ,   this.Name           ) )
            
            iterator = this.createIterator();
            while iterator.hasNext
                component = iterator.next();
                component.render( depth+1 )
            end
            
            uml2doc.addString( sprintf( '%s%s %s', indentation(depth), this.ID_, '<<<' ) )
            
        end
        function    add                         ( this, component   )   
            this.ComponentList.add( component )
        end
        function    remove                      ( this, component   )   
            this.ComponentList.remove( component )
        end
        function    iterator = createIterator   ( this              )   
            iterator = m2uml.CompositeIterator( this.ComponentList.listIterator ); 
        end
        function    getChild                    ( this, n           )   
            variable_not_used( this, n )
        end
    end
end
