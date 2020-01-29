classdef    start_poi < handle
    
    properties
        cont
    end
    
    methods
        function    this = start()   
            X   = [14.9,10.3,8.5,17];
            Y   = [6.5,16.5,8.2,15];
            obj = map();
            fgh = obj.fgh;
            %  uicontrol('Style', 'pushbutton', 'String', 'flashY'   ...
            %           ,'Position', [16,5,2,0.5], 'Callback', 'cla' );
            set( fgh, 'MenuBar','none','Name'                               ...
                ,'Animated traffic lights on road intersection -- OOP demo' )
            
            this.cont = 1;
            [~] = uimenu( fgh, 'Label','Yellow_Flash'           ...
                        , 'Callback', @(x,y) switch_light(this,1) );
            [~] = uimenu( fgh,'Label','Red_Yellow_Green'        ...
                        , 'Callback', @(x,y) switch_light(this,2) );
            [~] = uimenu( fgh,'Label','Finish'                  ...
                        , 'Callback', @(x,y) switch_light(this,0) );
                    
            disp('use menu to change lights or to finish')
            text( 15.2,20, 'use menu to change lights' )
            
            lampsAll=tLamps(X,Y);
            for i=1:2
                lampsAll=gray2flash(lampsAll);
            end
            for i=1:2
                lampsAll=rgb2all(lampsAll);
            end
            lampsAll=gray2flash(lampsAll);
            
            %% traffic lights are controlled from menu now
            while this.cont >= 1  % loop until break 
                switch this.cont
                    case 1
                        fprintf('1')
                        lampsAll = gray2flash(lampsAll);
                    case 2
                        fprintf('2')
                        lampsAll = rgb2all(lampsAll);
                end
            end
        end
        function    switch_light( this, val )
            this.cont = val;
        end
    end
end