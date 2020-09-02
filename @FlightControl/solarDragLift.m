function sunforceVector=solarDragLift(solarPressure, sunlight,normal, theta,panelSurface,noPanels,gammaSunSpecular,gammaSunDiffusive)
%% input variables
%%solarPressure
%%sunlight
%%normal
%%theta
%%panelSurface
%%noPanels
%%gammaSunSpecular
%%gammaSunDiffusive
%%output variables
%%sunforcevectorz2

  %% model as per:
  %% 'Modelling of Solar Radiation Pressure Effects: Parameter Analysis for the MICROSCOPE Mission'
  %% by Meike List, Stefanie Bremer, Benny Rievers, and Hanns Selig
  %% Equation 6
 
  sunforceVector=solarPressure*(...
                   (1-gammaSunSpecular)                                      *sunlight...
                   +2*(gammaSunSpecular*cosd(theta) + 1/3*gammaSunDiffusive) *normal...
                   )*cosd(theta)*panelSurface*noPanels;
end
% 
% %% rotate sun for Earth's axis tilt and SSO inclination
% if rotatingSun
%   rotatedSunLight1 = rodrigues_rot(sunlight',[0 0 1],-inclinationOrbitalPlaneWRTEcliptic/180*pi);
% else
%   rotatedSunLight1=sunlight';
% end
% 
% 
%   %% rotation during orbiting, eclipse at winter solstice
%   if sunOn
%     if rotatingSun
%         if eclipsedSun
%               if wrapTo360(meanMotion*180/pi*(time(j)))<90-25 || wrapTo360(meanMotion*180/pi*(time(j)))>90+25
%                 rotatedSunLight2 = rodrigues_rot(rotatedSunLight1,[0 1 0],-meanMotion*time(j));
%                 solarPressureForceVector = solarpressureforcevectorfunction(rotatedSunLight2',panelSurface,...
%                                                         panels(1),panels(2),panels(3),alphas,betas,gammas);           
%               else %% calculate eclipse - in eclipse
%                 rotatedSunLight2 = [0 0 0];
%                 solarPressureForceVector=zeros(3,size(alphas,2),size(betas,2),size(gammas,2));          
%               end %% calculate eclipse
%         else %% eclipsedSun
%               rotatedSunLight2 = rodrigues_rot(rotatedSunLight1,[0 1 0],-meanMotion*time(j));
%               solarPressureForceVector = solarpressureforcevectorfunction(rotatedSunLight2',panelSurface,...
%                                                         panels(1),panels(2),panels(3),alphas,betas,gammas);           
%         end %% eclipsedSun
%     else %% rotatingSun
%         rotatedSunLight2 = rotatedSunLight1;
%         solarPressureForceVector = solarpressureforcevectorfunction(rotatedSunLight2',panelSurface,...
%                                                   panels(1),panels(2),panels(3),alphas,betas,gammas);                 
%     end %% rotatingSun
%   else %% sunOn
%     rotatedSunLight2 = [0 0 0];
%     solarPressureForceVector = solarpressureforcevectorfunction(rotatedSunLight2',panelSurface,...
%                                               panels(1),panels(2),panels(3),alphas,betas,gammas);           
%   end %% sunOn
