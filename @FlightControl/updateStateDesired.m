function updateStateDesired(this, time, meanMotionRad)
%% Update desired satellite state
% JT: this needs change: the size-determining values need to go to parameters,
% otherwise this files must be changed each time a new case is run
% ______________________________________________________________________________
%
% Desired solution for Ivanov's case.
%
% Input:
% - Mean motion [rad/s].
% ______________________________________________________________________________

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

%{
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
%}

% SSC              =SSCoefficient
% MAO              =meanAnomalyOffSet
SSC=1;    MAO=0;

    A=2*SSC/(2-SSC^2); %% if SSC==1 then A=2
    B=(2-5*SSC^2)/2/SSC;
    D=sqrt(3*SSC^2-2); %% if SSC==1 then D=1
 
    sstDesired(1,:)= this.FFPS.ffp2   + B*meanMotionRad*this.FFPS.ffp6*time +    this.FFPS.ffp1*cos(sqrt(2*SSC/A)*meanMotionRad*time+this.FFPS.ffp7+MAO)                          - this.FFPS.ffp5*sqrt(2*SSC*A)*sin(sqrt(2*SSC/A)*meanMotionRad*time+this.FFPS.ffp7+MAO);
    sstDesired(2,:)=                                                        this.FFPS.ffp3*cos(D*meanMotionRad*time+this.FFPS.ffp8+MAO)                                      + this.FFPS.ffp4/D/meanMotionRad*         sin(D*meanMotionRad*time+this.FFPS.ffp8+MAO);
    sstDesired(3,:)= this.FFPS.ffp6                                     +    this.FFPS.ffp5*cos(sqrt(2*SSC/A)*meanMotionRad*time+this.FFPS.ffp7+MAO)                          + this.FFPS.ffp1/sqrt(2*SSC*A)*sin(sqrt(2*SSC/A)*meanMotionRad*time+this.FFPS.ffp7+MAO);

    sstDesired(4,:)=                   B*meanMotionRad*this.FFPS.ffp6      -    this.FFPS.ffp1*sin(sqrt(2*SSC/A)*meanMotionRad*time+this.FFPS.ffp7+MAO)*sqrt(2*SSC/A)*meanMotionRad - this.FFPS.ffp5*sqrt(2*SSC*A)*cos(sqrt(2*SSC/A)*meanMotionRad*time+this.FFPS.ffp7+MAO)*sqrt(2*SSC/A)*meanMotionRad;
    sstDesired(5,:)=                                                   -    this.FFPS.ffp3*sin(D*meanMotionRad*time+this.FFPS.ffp8+MAO)*D*meanMotionRad                         + this.FFPS.ffp4/D/meanMotionRad*         cos(D*meanMotionRad*time+this.FFPS.ffp8+MAO)*D*meanMotionRad;
    sstDesired(6,:)=                                                   -    this.FFPS.ffp5*sin(sqrt(2*SSC/A)*meanMotionRad*time+this.FFPS.ffp7+MAO)*sqrt(2*SSC/A)*meanMotionRad + this.FFPS.ffp1/sqrt(2*SSC*A)*cos(sqrt(2*SSC/A)*meanMotionRad*time+this.FFPS.ffp7+MAO)*sqrt(2*SSC/A)*meanMotionRad;

%%^^^^^^ Re-implement formation mode selection...
% Implement based on switches
% Too confusing the way it is right now
this.StateDesired = sstDesired;

end % Function FlightControl.updateStateDesired.
