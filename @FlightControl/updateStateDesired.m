function updateStateDesired(this, time, meanMotion)
% JT: this needs change: the size-determining values need to go to parameters, otherwise this files must be changed each time a new case is run

%% Update desired satellite state.
%_____________________________________________________________________
%
% Desired solution for Ivanov's case.
%
% Input:
% - Mean motion [rad/s].
%_____________________________________________________________________

% Does this make sense?
% Isn't the size of 'time' always 1?
% sstDesired = zeros(9,size(time,2));
sstDesired = zeros(6,1);

%{
switch this.FormationMode % Analytical solution according to Ivanov.
	case 1
		A = 100; D = 115;
	case 2
		factor = 1000; A = factor * 100; D = factor * 115;
	otherwise
		% To do: Throw error here if formation mode value is not expected.
end
switch this.SatID
	case 1	
		sstDesired(1,:) = -D;
	case 2
		sstDesired(1,:) = D;
	case 3	
		sstDesired(1,:) = 2 * A *	          cos(meanMotion * time - acos(1/3));		
		sstDesired(2,:) =     A * sqrt(3) * sin(meanMotion * time);
		sstDesired(3,:) =     A *           sin(meanMotion * time - acos(1/3));
		sstDesired(4,:) = 2 * A *          -sin(meanMotion * time - acos(1/3)) * meanMotion;
		sstDesired(5,:) =     A * sqrt(3) * cos(meanMotion * time)              * meanMotion;
		sstDesired(6,:) =     A *           cos(meanMotion * time - acos(1/3))  * meanMotion;
	case 4
		sstDesired(1,:) = 2 * A *           cos(meanMotion * time);
		sstDesired(2,:) =     A * sqrt(3) * sin(meanMotion * time + acos(1/3));
		sstDesired(3,:) =     A *           sin(meanMotion * time);	
		sstDesired(4,:) = 2 * A *          -sin(meanMotion * time)            * meanMotion;
		sstDesired(5,:) =     A * sqrt(3) * cos(meanMotion * time + acos(1/3)) * meanMotion;
		sstDesired(6,:) =     A *           cos(meanMotion * time)             * meanMotion;
	otherwise
		% To do: Throw error here if satellite ID number is not expected.
end
%}

switch this.FormationMode % Solution for ISMission
	case 1
		A = 0; D = -1000;
	otherwise
		% To do: Throw error here if formation mode value is not expected.
end

switch this.SatID
	case 1	
		sstDesired(1,:) = 0;
	case 2
		sstDesired(1,:) = D;
end

this.StateDesired = sstDesired;

end % Function FlightControl.updateStateDesired.
