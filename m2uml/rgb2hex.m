function    hex = rgb2hex( rgb, prefix )
% Converts a rbg colormap to a hexadecimal string array.
%
%   rgb  nx3 array of double.     The elements   =[0,1]            
%   hex  nx6 array of characters. The characters =[0,f] 
%
%   See also: hex2rgb, rgb2hex2rgb_test 

%   0   1d   2d                 255d  1     where d=1/256
%   [...)[...)[...) ... [...)[...)[...]     
%
%   All intervals are half closed, except for the last 
%   interval. The first interval is mapped to '00' and 
%   the last interval is mapped to 'ff'. 

%   2012-02-11, poi: Added second argument, 'prefix', to allow for "#".  

%{
      Color Name Hex Value    
      Black     #000000         Green   #008000 
      Silver    #c0c0c0         Lime    #00ff00 
      Gray      #808080         Olive   #808000 
      White     #ffffff         Yellow  #ffff00 
      Maroon    #800000         Navy    #000080 
      Red       #ff0000         Blue    #0000ff 
      Purple    #800080         Teal    #008080 
      Fushia    #ff00ff         Aqua    #00ffff 
%}
    
    if nargin == 1, prefix = '';
    end
    
    R   = size( rgb, 1 );
    hex = char( 32*ones( R, 6 + numel(prefix) ) );
    
    for ii = 1 : R  % loop over all rows                  
        RGB = floor( 256 * rgb( ii, : ) );  
        RGB( RGB >= 256 ) = 255;
        str = dec2hex( RGB, 2 );
        hex( ii, : ) = [ prefix, str(1,:), str(2,:), str(3,:) ];
    end
end