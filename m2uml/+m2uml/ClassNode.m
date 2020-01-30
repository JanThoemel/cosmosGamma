classdef    ClassNode < m2uml.ScriptComposite      
    % ClassNode     
    %
    
    %   There is one ClassNode object for each class
    
%   TODO: Refactor  ClassNode to ClassNode < ModuleNode  and FunctionNode < ModuleNode
    
    properties                      
        Type                    % 
        PackageName             %
        HyperLink       = '';   %
        ToolTipString   = '';   %
    end
    properties  ( Constant = true ) 
        %   The order here is used ... FIXME;  Why in *** the name "ClassTypes"?
        ClassTypes  = struct(   'dynamicprops'  , 'D'   ...
                            ,   'function'      , 'F'   ...     ??? Q&D  
                            ,   'hgsetget'      , 'G'   ...
                            ,   'handle'        , 'H'   ...
                            ,   'value'         , 'V'   );
    end
    
    methods                         
        function    this = ClassNode( varargin )                    %
            %ClassNode. Constructor
            
            if nargin == 0
                return                                                  %   RETURN
            end
            ipp = InputPreprocessor( {
                    3 'FileSpec'    nan     {'char'}  {'FileExist'}
                    } );
            ipv = ipp.parse( varargin{:} );
% dbk
            meta_this = meta.class.fromName( filespec2fqn( ipv.FileSpec ) );
            
            if not( isempty( meta_this ) )

                this.Name   = meta_this.Name;
                this.Type   = class_type_( meta_this );

                if not( isempty( meta_this.ContainingPackage ) )
                    this.PackageName = meta_this.ContainingPackage.Name;
                else
                    this.PackageName = 'none';
                end

%               FIXME: Cannot handle multiple superclasses             
                if not( isempty( meta_this.SuperClasses ) )
%                       this.SuperclassNames = { meta_this.SuperClasses{:}.Name };
                end
%   Properties
                ix_p4d  = select_properties_for_diagram_        ...
                        ( ipv.FileSpec, meta_this.PropertyList  );

                meta_property   = meta_this.PropertyList( ix_p4d );
                ix_sorted       = sort_properties_display_order_      ...
                                ( ix_p4d, ipv.FileSpec, meta_property );
                meta_property   = meta_property( ix_sorted );
                property_array  = m2uml.Property( meta_property, ipv.FileSpec );

                cac = visibility_({ meta_property.SetAccess });
                [ property_array.VisibilityCode ] = cac{:};
                
%               property_array = m2uml.Property.empty;
                this.add( property_array )
                
%   Methods
% dbk 
                ix_m4d  = select_methods_for_diagram_       ...
                        ( ipv.FileSpec, meta_this.MethodList );

                meta_method = meta_this.MethodList( ix_m4d ); 
                ix_sorted   = sort_methods_display_order_       ...
                            ( ix_m4d, ipv.FileSpec, meta_method );
                meta_method = meta_method( ix_sorted );

                method_array = m2uml.Operation( meta_method, ipv.FileSpec );

                cac = visibility_({ meta_method.Access });
                [ method_array.VisibilityCode ] = cac{:};
                this.add( method_array )
                
            else
                [ ~, name, ~, package ] = filespec_parts_( ipv.FileSpec );
        %       FIXME: handle nested packages
                if not( isempty( package ) ),   this.PackageName = package{1};   
                else                            this.PackageName = 'none';
                end

                this.Type           = 'F';
%               this.ComponentList  = m2uml.ArrayList.empty;
                this.Name           = name;
                this.Description    = '';
                this.ID_            = '';       % 2016-10-10, poi: '#000';
                this.Created_       = 0;
            end
% dbk
            % Tooltips                
%             if meta_this.Hidden 
%                 this.ToolTipString = 'The class is hidden';
%             else
                H1 = get_H1_line( ipv.FileSpec );
                if not( isempty( H1 ) )
                    try 
                        this.ToolTipString = H1;
                    catch me
dbk     % catch
                        fprintf( 2, '>>>> %s\n', H1 ); 
                        getReport( me )
                    end
                else
                    this.ToolTipString = 'No H1-line!';
                end
%             end

            % Hyperlink  
            fmt = 'matlab:matlab.desktop.editor.openDocument(''%s'')';
            this.HyperLink = sprintf( fmt, ipv.FileSpec );
            %
%   "todo/fixme"         
% dbk                
            tox = m2uml.TodoFixme( ipv.FileSpec );
            this.add( tox )
            
        end
        function    render( this, depth )                           %
            
            color_hex   = rgb2hex([ 0.9, 1.0, 0.90 ], '#' );
            stereotype  = '';
            [ ~, name ] = class_name_parts_( this.Name );
         
            frmt_spec   = '%s%s class %s << (%c,%s) %s >> [[%s{%s}]] {';
            str = sprintf(  frmt_spec           ...
                        ,   indentation(depth)  ...
                        ,   this.ID_            ...
                        ,   name                ...
                        ,   this.Type           ...
                        ,   color_hex           ...
                        ,   stereotype          ...
                        ,   this.HyperLink      ...
                        ,   this.ToolTipString  );
                                
            uml2doc.addString( str )

            iterator = this.createIterator();
            while iterator.hasNext
                component = iterator.next();
                if not( isempty( component ) )
                    component.render( depth+1, this.Name )
                end
            end
            str = sprintf( '%s%s %s', indentation(depth), this.ID_, '}' );
            uml2doc.addString( str )
            
            if strcmp( this.Type, 'F' )
                str = sprintf( '%s%s %s', indentation(depth), this.ID_  ...
                                        , 'hide empty members'          );
                uml2doc.addString( str )
            end
        end
    end
end 

function    [ package, class_name ]         = class_name_parts_     ( str )         %

    if any( str == '.' )
        
        cac = regexp( str, '\.', 'split' );
        
        package     = sprintf( '%s.', cac{1:end-1} );
        package     = package( 1 : end-1 );
        class_name  = cac{end};
    else
        package     = cell(0);  
        class_name  = str;
    end

end
function    [ folder, name, ext, package ]  = filespec_parts_       ( filespec )    %

    [ folder, name, ext ]   = fileparts( filespec );
    
    cac         = regexp( filespec, '\\', 'split' );
    hasPackage  = cellfun( @(c) strcmp( c(1), '+' ), cac );
    
    if any( hasPackage )
        package = cac( hasPackage );
    else
        package = cell(0);
    end
end

function    out = class_type_           ( meta_data             )   %
    
%   FIXME:  class_type_ doesn't handle all combinations of inheritance correctly, to put
%           it mildly.

%   In the Class Diagram a letter in a circle next to the name of the class is 
%   displayed to indicate the type of the class. This function retrieves that letter.
%   The alternatives are: [S,D,G,H,V], which stands for singleton, dynamicprops, 
%   hgsetget, handle and value. See: ClassNode.ClassTypes. The reason to indicate 
%   inheritance from the abstract classes this way is to make the diagram more compact.
%   If (I'm unsure here) conflicts arise because of multiple superclasses priority is
%   given by [D,G,H,V]. 
    
%   Doc says:  
%   A  class that does not explicitly set its HandleCompatible attribute to true is:
%   -   A handle class if any of its superclasses are handle classes
%   -   A value class if none of the superclasses are handle classes
%
%   Doc says: SuperClasses read only, use SuperClassList instead (also read only)
    
    if  is_singleton_pattern_( meta_data )
        out = 'S';
    elseif  numel( meta_data.SuperclassList ) == 0 
        out = 'V';
    elseif  meta_data.Abstract 
        out = 'A';
    else
        len = numel( meta_data.SuperclassList );
        cts = m2uml.ClassNode.ClassTypes;

        for ii = 1 : len
            if  any( strcmp( meta_data.SuperclassList(ii).Name, fieldnames( cts ) ) )
                typ = cts.( meta_data.SuperclassList(ii).Name );
            else
                typ = class_type_( meta_data.SuperclassList(ii) );
                if strcmp( typ, 'A' ) 
                    if  meta_data.SuperclassList(ii).HandleCompatible
                        typ = 'H';
                    else
                        typ = 'V';
                    end
                end
            end
        end
% NOTE: What's the purpose of the following two lines of code?        
        type_string = transpose( char( struct2cell( cts ) ) );
        ixm = min( arrayfun( @(chr) strfind( type_string, chr ), typ ) ); 
        out = type_string( ixm );
    end
end
function    isp = is_singleton_pattern_ ( meta_data             )   %
%   Check whether the class is a Singleton, i.e. the constructor is private     
%   Assumption: There is an explicite constructor in the classdef-file

    isp = false;
    
    for ii = 1 : numel( meta_data.Methods )
        if is_constructor_( meta_data, ii )
            if  strcmp( meta_data.Methods{ii}.Access, 'private' )
                isp = true;
            end
            break
        end
    end
end
function    isc = is_constructor_       ( meta_data, ix_method  )   %
%
%   Assumption: The meta data object does not explicitely indicate the constructor 

    isc = false;
    if strcmp(  meta_data.Methods{ix_method}.DefiningClass.Name, meta_data.Name )
        cac = regexp( meta_data.Name, '\.', 'split' );
        if strcmp( meta_data.Methods{ix_method}.Name, cac{end} )
            isc = true;
        end
    end
end
%
function    [vis,num] = visibility_                   ( access_list              )  %

%   access_list     <1xn cell>  cell array of strings

%   visibility_ is called twice for each class node. 
dbk
%   Access to Class Members, (Access = {?ClassName1,?ClassName2,...}), -> 'protected'
    for jj = 1 : length( access_list )
        if isa( access_list{jj}, 'cell' ) && isa( access_list{jj}{1}, 'meta.class' )
            access_list{jj} = 'protected';
        end
    end
 
    fields  = { 'immutable'; 'private'; 'protected'; 'public', ; 'none' };
    savis   = cell2struct( { '-'; '-'; '#'; '+'; '+' }, fields );
    sanum   = cell2struct( {   3;   3;   2;   1;   1 }, fields );
    
    len = length( access_list );
    vis = cell( len, 1 );
    num = nan( len, 1 );
    
    for jj = 1 : len
        if any( strcmpi( access_list(jj), fields ) )
            vis{jj} = savis.( access_list{jj} );
            num(jj) = sanum.( access_list{jj} );
        else
            dbk    % catch    
        end
    end
end
function    ix_p4d    = select_properties_for_diagram_( filespec, meta_property  )  %
% dbk
    if not( isempty( meta_property ) )
% poi: reshape
        defining_class_names = arrayfun( @(obj) obj.DefiningClass.Name      ...
                            ,   reshape( meta_property, 1,[] ), 'uni',false );
                        
        class_name = filespec2fqn( filespec );

        ix_p4d  = find(                                 ...
            strcmp( defining_class_names, class_name )  ... defined in the class
            & not([ meta_property.Abstract ])           ... concrete methods
            );  
    else
        ix_p4d  = [];
    end
end
function    ix_m4d    = select_methods_for_diagram_   ( filespec, meta_method    )  %
            
% FIXME: Filtering of superclass methods, empty, "clutter", etc. is done in render.
%       However, it must be done before assigning hyperlinks and tooltips. Either must be
%       moved.
%
%       1.  The first idea was to gather all information and display selected items. 
%           Thus, the filtering in the method, render. 
%       2.  However, there is time to save by not gathering stuff, e.g. reading H1-line, 
%           which will not be used. 
%       3.  Private and protected methods, (properties??)

    % The method, empty, is added automatically by Matlab to every class and the
    % value of DefiningClass is the class definded by the user. However, it
    % doesn't appear in the m-file. Q&D, but cannot think of anything better. User
    % must not overload empty.

    is_method_name_empty = ismember( {meta_method.Name}, {'empty','loadobj'} );

% poi: reshape
    defining_class_fqns = arrayfun( @(obj) obj.DefiningClass.Name      ...
                        ,   reshape( meta_method, 1,[] ), 'uni',false );

%   2016-12-28, poi: split filespec2fqn                     
    class_fqn   = filespec2fqn( filespec );  
    [ is_class, constructor_name ] = filespec2constructor_name( filespec );  
    variable_not_used( is_class )
    
    is_constructor_name = ismember( {meta_method.Name}, {constructor_name} ); 

    is_m4d ... 
    =   strcmp( defining_class_fqns, class_fqn )... defined in the class
    &   not( is_method_name_empty )             ... the method named empty
    &   not([ meta_method.Abstract ])           ... concrete methods
    ; 

    %   Set to false if the constructor isn't defined explicitely in the class 
    is_m4d( is_constructor_name ) = has_explicit_constructor( class_fqn );

    ix_m4d = find( is_m4d );
end
function    ix_sort   = sort_properties_display_order_( ix_m4d,ffs,meta_property )  %
 
% Display order: constructor; public, protected, private; and lexical order 
% dbk
variable_not_used( ix_m4d, ffs )

    num = nan( numel( meta_property ), 2 );

    %   Access level
    [ ~, num( :, 1 ) ] = visibility_({ meta_property.SetAccess });
    
    %   Lexical order 
    [ ~, ixx ]  = sort( lower( {meta_property.Name} ) );
    [ ~, ixn ]  = sort( ixx );
    num( :, 2 ) = ixn(:);
    
    [ ~, ix_sort ]  = sortrows( num, 1:size(num,2) );    
end
function    ix_sort   = sort_methods_display_order_   ( ix_m4d, ffs, meta_method )  %

% Display order: constructor; public, protected, private; and lexical order 
% dbk
variable_not_used( ix_m4d, ffs )

    if not( isempty( meta_method ) )
        num = nan( numel( meta_method ), 3 );

        %   Constructor
        str = regexp( meta_method(1).DefiningClass.Name, '\.', 'split' );  
        isc = strcmp( str{end}, {meta_method.Name} );
        num(   :, 1 ) = 999;
        num( isc, 1 ) = 1; 

        %   Access level
% dbk        
        [ ~, num( :, 2 ) ] = visibility_({ meta_method.Access });

        [ ~, ix_sort ]  = sortrows( num, 1:size(num,2) );
    else
        ix_sort = [];
    end
end
