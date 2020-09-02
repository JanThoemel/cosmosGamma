function updSolarPressures(this)
%% Update wind pressures.
%_____________________________________________________________________
%
% Details here.
% method of FlightControl class
%_____________________________________________________________________

this.SolarPressure = this.SolarFactor * 2 * 4.5e-6 * [0 -1 0]';

this.SolarPressureVector = this.getSolarPressureVector( ...
                                 this.SolarPressure, this.SurfacePanel, ...
 				                         this.Panels(1), this.Panels(2), this.Panels(3), ...
 				                         this.Alphas, this.Betas, this.Gammas);
 			
end % Function FlightControl.updSolarPressures.