classdef    InputPreprocessor < handle   
%   Checks the input arguments and creates a structure of param-value-pairs 
%                   
%   InputPreprocessor provides an alternate interface to the class, inputParser,  
%   together with the function, validateattributes. In addition to the constraints
%   of validateattributes InputPreprocessor takes constraints defined in the class,
%   ValidatorFunctionCreator. 
%
%   CONSTRUCTOR
%   ipp = InputPreprocessor( CA );  where CA is a cell array with one row 
%       for each input argument of the function/method.            
%       CA{:,1}  integer, [1:3], controls which of the methods of inputParser that will 
%                                be used; addRequired, addOptional or addParamValue
%       CA(:,2)  char, name of argument
%       CA(:,3)  cell array of default values
%       CA(:,4)  cell array of legal class names
%       CA(:,5)  cell array of constraints*, which the argument shall satify.
%                *) the validateattributes help uses the word attributes  
%
%   METHODS
%   ipv = ipp.parse( arglist );  Parses and validates named inputs 
%       where ipv is a struct array of parameter/value pairs, i.e. the field names of ipv
%       are property names and the field values are the corresponding property values. 
%   
%   EXAMPLE  
%   function    my_publish_ip( varargin )
%   persistent ipp
%   if isempty( ipp )
%       CA = {                      
%           1,  'script'    ,   ''      ,   {'char'}    , {}
%           2,  'format'    ,   'html'  ,   {'char'}    , {'PublishFormat'}
%           3,  'outputDir' ,   pwd     ,   {'char'}    , {}
%           3,  'maxHeight' ,   []      ,   {'double'}  , {'positive','integer'}  
%           3,  'maxWidth'  ,   []      ,   {'double'}  , {'positive','integer'} 
%           };
%       ipp = InputPreprocessor( CA );
%   end
%   try
%       ipv = ipp.parse( varargin{:} );
%   catch me
%       rethrow( me )
%   end
%   
%   Where
%
%   See also: pv2struct, inputParser, validateattributes, ValidatorFunctionCreator
%             h:\m\Pia\Pia2\piaUnit\InputPreprocessor_test.m, MergeStructs

%   References: 
%   John D'Errico, parse_pv_pairs, FEX  not clear whether pv-pairs may include structs
%   Malcolm Wood, parsargs, FEX,        not clear whether pv-pairs may include structs
%   Phillip M. Feldman, getargs.m, FEX  not clear whether pv-pairs may include structs

%{
    persistent ipp
    if isempty( ipp )
        ipp = InputPreprocessor( {
              1   'Name'        ''          {'char'}        {}
              } );                                      
    end
    ipv = ipp.parse( varargin{:} );

    try     
        ipv     = ipp.parse( varargin{:} );
        this    = ipv2this( this, ipv );
    catch me
        rethrow( me )
    end

Keywords( ValidatorFunctionCreator )
%}          

%   ----------------------------------------------------------------------------
%   There are "strict" requirements on the validator function of the addOptional 
%   method of inputParser. Mathworks support says:
%   Summary:        inputParser Optional
%   Request ID:     1-9MYTIT  Product Version: 7.6 
%   Date Created:   26 Apr, 2009 04:12:17 PM 
%   Attachment:     inputParser_study.m 

%   ----------------------------------------------------------------------------
%   HandleGraphicMatch: Intuitively, I dislike the way validatestring distinguish 
%   between exact and partial matches.
%
%   str = validatestring( 'won', {'won', 'wonder', 'wondrous'} ); returns 'won'
%   str = validatestring( 'won', {'Won', 'wonder', 'wondrous'} ); returns 'Won'
%   str = validatestring( 'wond',{'won', 'wonder', 'wondrous'} ); causes an error
%   
%   However, that's the way handle graphics works. Futhermore, several functions use
%   this way of matching, e.g. the argument name, "UniformOutput" of cellfun, which I 
%   often write as "uni" to save on the line length ;-).
%   
%
%   On-line documentation says: 
%
%   Core Graphics Objects
%   ...
%   ... formal property name/property value syntax.
%   ...
%   A Note About Property Names
%   By convention, MATLAB documentation capitalizes the first letter of each word that 
%   makes up a property name, such as LineStyle or XTickLabelMode. While this makes 
%   property names easier to read, MATLAB does not check for uppercase letters. In 
%   addition, you need to use only enough letters to identify the name uniquely, so you 
%   can abbreviate most property names. 
%
%   Using Object Properties (External API)
%   ...
%   Property names are not case sensitive. You can abbreviate them as long as the name 
%   is unambiguous.
%
%   However, I cannot find a formal description of the "formal property name/property 
%   value syntax"
%
%
%   There seems to be two ways to implement HandleGraphicMatch
%   1.  Modify ValidatorFunctionCreator in such a way that the second x in 
%           @(x) feval( ca{1}, x ); 
%       is replaced by validatestring( x, fullstrings ). Speed? Short strings might 
%       hide in function handles.
%   2.  Preprocess varagin in the method, parse, of this class. 
%
%   The HandleGraphicMatch functionality might be required to conform with Matlab style.
%   However, it is not important for programming - use in the Command Window is different.
%   TODO: HandleGraphicMatch - see hgsetget
%
%   RequiredInputArgument: In the predecessor, inarg2struct, there was a possibility to
%   prescribe that an input argument was required, i.e. when there was no default value. 
%   This option was not included in InputPreprocessor, because there is little need and 
%   no simple way to implement it. 2010-06-21, poi: There is a need! Now, NaN in the 
%   position of the default indicates required input. 
%
%   ----------------------------------------------------------------------------
%   2009-12-21, poi: The construct <persistent ipp> is important to the speed.
%               All data contained in ipp originated in the class, thus it does  
%               not need to be recalculated for each call.
%
%   2010-02-12, poi: The Image Processing Toolbox includes some functions for  
%               validation of values of input arguments, e.g. iptcheckinput   
%
%   2010-04-01, poi: Colormap
%
%   2013-02-16, poi: introduced "@func" as short-hand for "function_handle" 
%
%   2013-02-17, poi: Why not have something called "index" that could be logical or
%               interger, c.f. test4ida.blue2red 
%
%   2013-04-16, poi: Tried to add the option to pass **empty pv-structures** in the input
%               argument list. However, it seems to be too tricky the implement this.
%               It was triggered by test4ida.TestRequestQueue.serveIncommingRequests.
%               See the first lines of the method, parse. Obviously, inputParser errors
%               for an empty pv-structure. See inputParser_with_Empty_pv_structure.m. A
%               solution based on this.Signature seems possible. This code in the first
%               try-clause of the method, parse, handles the most cases, however, not
%               empty struct in value-position and not ...
%                   if all( [this.Signature{1,:}] == 3 ) 
%                       ise = cellfun( @(x) isa(x,'struct')&&isempty(x) ...
%                                  ,   varargin, 'uni', true            );
%                       this.ip.parse( varargin{ not( ise ) } );
%                   else
%                       this.ip.parse( varargin{ : } );
%                   end
%
%   2013-06-16, poi: Implemented the old idea to shortcut the validation to gain speed. 
%               Surprice how little code was needed. It was triggered by the execution 
%               time of IPP in h5pia.h5info2tree, which is not acceptable. Search for
%               "isValidate". 
%   TODO:       Make a speed optimised replacement for InputPreprocessor; no checking
%               whatsoever; not based on inputParser. 

%   Bug 498418, 
%   Summary:        The command "clear classes" fails in certain circumstances.
%   Description:    Consider the case where you have a class constructor that passes 
%                   an anonymous function to an inputParser object method, as shown below: 
%                   ...                 
%   Workaround:     You can clear the **inputParser** before the class goes out of scope.
%   Fix:            This bug was fixed as of R2009a(7.8).

%   ----------------------------------------------------------------------------
%   author:     per isakson
%   e-mail:     per-isaksson(at)byv-kth-se
%   modified:   2010-04-17
%   ----------------------------------------------------------------------------
%{
    properties
        HandleGraphicMatch
    end
%}
    properties ( Access = private )
        Signature
        ip 
        vfc        
    end
    properties ( Dependent = true ) 
        CaseSensitive
        KeepUnmatched
        StructExpand
    end
    properties ( Dependent = true, GetAccess = public, SetAccess = private ) 
        Parameters
        Unmatched
        UsingDefaults
    end
    
    methods  
        function    this = InputPreprocessor( CA, isValidate )
            
            narginchk( 1, 2 )
            if nargin == 1,     isValidate = true;
            end

%           CA is row-oriented in the first place for readability                
            this.Signature          = transpose( CA );  
            this.ip                 = inputParser;
            this.vfc                = ValidatorFunctionCreator;
            this.CaseSensitive      = false;
            this.KeepUnmatched      = false;
            this.StructExpand       = true;
%           this.HandleGraphicMatch = false;
                                
            assert( all( diff( [CA{:,1}] ) >= 0 )              ...
                ,   'InputPreprocessor:ArgumentsTypeInWrongOrder'   ...
                ,   'The input arguments types are in the wrong order in the schema' ) 

%           See OptionalParametersHaveValidators_demo.m            
            assert(     isempty( CA )                                  ...  
                    ||  all( not(   ( transpose([CA{:,1}]) == 2 )      ...
                                  & cellfun( 'isempty', CA(:,5) ) ) )  ...
                ,   'InputPreprocessor:MissingValidator'               ...
                ,   'addOptional-parameters must have a non-empty validator' )

%           Q&D: introduced "@func" as short-hand for "function_handle"            
            this.Signature(4,:) = cellfun( @(s) strrep(s,'@func','function_handle') ...
                                        ,   this.Signature(4,:), 'uni', false       );
            
            if isValidate                   % 2013-06-16, poi: 
                for ca = this.Signature
                    fh  = this.vfc.createValidatorFunction( ca{4}, ca{5} );
                    switch  ca{ 1 }
                        case 1,     this.ip.addRequired(   ca{2},        fh )  
                        case 2,     this.ip.addOptional(   ca{2}, ca{3}, fh )
                        case 3,     this.ip.addParamValue( ca{2}, ca{3}, fh )
                        otherwise
                            error( 'InputPreprocessor:InputPreprocessor'    ...
                                ,  'Should not occur'                       )
                    end
                end
            else
                for ca = this.Signature
                    switch  ca{ 1 }
                        case 1,     this.ip.addRequired(   ca{2}        )  
                        case 2,     this.ip.addOptional(   ca{2}, ca{3} )
                        case 3,     this.ip.addParamValue( ca{2}, ca{3} )
                        otherwise
                            error( 'InputPreprocessor:InputPreprocessor'    ...
                                ,  'Should not occur'                       )
                    end
                end
            end
        end
        
        function    result = parse( this, varargin )    
            try
                this.ip.parse( varargin{ : } );
            catch me
                %   The name of the caller shall be included in the error identifier. By 
                %   doing that here we may use the call <ipv = ipp.parse( varargin{:} );>
                %   instead of <try, ipv = ipp.parse( varargin{:} );, catch ... , end>
                %
                %   Creating an exception object 
                %       me = MException( msgIdent, msgString, v1, ..., vN )
                %   is possible, but the property, stack, is empty! Why is that? Thus, I 
                %   use <try, error, catch me, end> to "modified" the exception object 
% TODO: Document this modification in the InputPreprocessor_demo   
                
                %   TODO: better error message:
                %   function_name( vararging )          when it should have been is an
                %   function_name( this, vararging )    error, which I doesn't spot 
                %                                       immediately
                %
                %   identifier: 'MATLAB:InputParser:MustBeChar' and a useless message
                %   
                try
                    stk = dbstack(1);
                    eid = strrep( me.identifier, 'vfc:'             ...
                                , [strrep(stk(1).name,'.',':'),':'] );
                    error( eid, strrep( me.message, '\', '\\' ) )
                catch me2
                    throwAsCaller( me2 )     % See: ExceptionHandling_demo 
                end
            end
            result  = this.ip.Results;
            try
%   FIXME: 2016-02-27, Double matrix as default value causes an error     
%     not( isempty(    result.(ca{:}) ) ) ... 
%                             && any( isnumeric(  result.(ca{:}) ) ) ...    
%                             && any( isnan(      result.(ca{:}) ) )
%   **Operands to the || and && operators must be convertible to logical scalar values.**
%     K>> ca{:}
%     ans =
%     Period
%     K>> result.(ca{:})
%     ans =
%             2015           2          23           0           0           0
%             2015           2          27           0           0           0
        
                for ca = this.ip.UsingDefaults
                    if     not( isempty(    result.(ca{:}) ) ) ... 
                        && any( isnumeric(  result.(ca{:}) ) ) ...    
                        && any( isnan(      result.(ca{:}) ) )
                    
                        error( 'InputPreprocessor:RequiredInput'                    ...
                            ,  'Argument "%s" failed validation: input is required' ...
                            ,  ca{:}                                                )
                    end
                end
            catch me  
                throwAsCaller( me )
            end
        end  
        
        function    set.CaseSensitive( this, is )   
            this.ip.CaseSensitive   = is;
        end
        function    set.KeepUnmatched( this, is )   
            this.ip.KeepUnmatched   = is;
        end
        function    set.StructExpand( this, is )    
            this.ip.StructExpand    = is;
        end
%{
        function    set.HandleGraphicMatch( this, is )
            this.HandleGraphicMatch = is;
            if is   ,   this.ip.CaseSensitive   = false;
            else        this.ip.CaseSensitive   = true;     % Q&D a smelling side effect
            end
        end
%}        
        function    is = get.CaseSensitive( this )  
            is  = this.ip.CaseSensitive;
        end
        function    is = get.KeepUnmatched( this )  
            is  = this.ip.KeepUnmatched;
        end
        function    is = get.StructExpand( this )   
            is  = this.ip.StructExpand;
        end
        function    is = get.Parameters( this )     
            is  = this.ip.Parameters;
        end
        function    is = get.Unmatched( this )      
            is  = this.ip.Unmatched;
        end
        function    is = get.UsingDefaults( this )  
            is  = this.ip.UsingDefaults;
        end
    end
end