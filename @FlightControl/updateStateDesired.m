function updateStateDesired(this, time, meanMotionRad, ffps)
%% Update desired satellite state
% ______________________________________________________________________________
%
% Desired solution for Ivanov's case.
%
% Input:
%   this % FlightControl object of the current satellite.
%   time % --Add description for paramater here--.
%   meanMotionRad % Mean motion, in rad/s.
% ______________________________________________________________________________


% Does this make sense?
% Isn't the size of 'time' always 1?
% sstDesired = zeros(9,size(time,2));
sstDesired = zeros(6,1);

SSC=1;  %% SSCoefficient [-]

A=2*SSC/(2-SSC^2); %% if SSC==1 then A=2
B=(2-5*SSC^2)/2/SSC;
D=sqrt(3*SSC^2-2); %% if SSC==1 then D=1

%-------------------------------------
% Use this.SatID to get id of each satellite
% based on the ids, set different desired states for each satellite?


%ffp1 for x cos and z sin
%ffp2 x-direction constant [m]
%ffp3 for y cos [m]
%ffp4 for y sin [m]
%ffp5 for x sin and z cos [m]
%ffp6 for x linear
%ffp7 mean anomaly offset x,z [which dimension?]
%ffp8 mean anomaly offset y   [which dimension?]

sstDesired(1,:)= ffps.ffp2 + B*meanMotionRad*ffps.ffp6*time + ffps.ffp1* cos( sqrt(2*SSC/A)*meanMotionRad* time + ffps.ffp7/180*pi )                               - ffps.ffp5 *sqrt(2*SSC*A)*   sin( sqrt(2*SSC/A)*meanMotionRad* time  + ffps.ffp7/180*pi);
sstDesired(2,:)=                                                        ffps.ffp3* cos( D*meanMotionRad*             time + ffps.ffp8/180*pi )                               + ffps.ffp4 /D/meanMotionRad* sin( D*meanMotionRad*             time  + ffps.ffp8/180*pi );
sstDesired(3,:)= ffps.ffp6                                       + ffps.ffp5* cos( sqrt(2*SSC/A)*meanMotionRad* time + ffps.ffp7/180*pi )                               + ffps.ffp1 /sqrt(2*SSC*A)*   sin( sqrt(2*SSC/A)*meanMotionRad* time  + ffps.ffp7/180*pi );

sstDesired(4,:)=                  B*meanMotionRad*ffps.ffp6      - ffps.ffp1* sin( sqrt(2*SSC/A)*meanMotionRad* time + ffps.ffp7/180*pi ) *sqrt(2*SSC/A)*meanMotionRad  - ffps.ffp5 *sqrt( 2*SSC*A)*  cos( sqrt(2*SSC/A)*meanMotionRad* time + ffps.ffp7/180*pi ) *sqrt(2*SSC/A)*meanMotionRad;
sstDesired(5,:)=                                                      - ffps.ffp3* sin( D*meanMotionRad*             time + ffps.ffp8/180*pi ) *D*meanMotionRad              + ffps.ffp4 /D/meanMotionRad* cos( D*meanMotionRad*             time + ffps.ffp8/180*pi ) *D*meanMotionRad;
sstDesired(6,:)=                                                      - ffps.ffp5* sin( sqrt(2*SSC/A)*meanMotionRad* time + ffps.ffp7/180*pi ) *sqrt(2*SSC/A)*meanMotionRad  + ffps.ffp1 /sqrt(2*SSC*A)*   cos( sqrt(2*SSC/A)*meanMotionRad* time + ffps.ffp7/180*pi ) *sqrt(2*SSC/A)*meanMotionRad;

%sstDesired

%%^^^^^^ Re-implement formation mode selection...
% Implement based on switches
% Too confusing the way it is right now
this.StateDesired = sstDesired;
% if time<50
%   fprintf('\n %f %f %f %f %f %f',this.StateDesired);
% end

end % Function FlightControl.updateStateDesired
