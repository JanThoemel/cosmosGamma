function updWindPressures(this, rho, v, tempAtmos)
%% Update wind pressures.
%_____________________________________________________________________
%
% Details here.
% method of FlightControl class
%_____________________________________________________________________

this.WindPressure = this.WindFactor * rho/2 * v^2 * [-1 0 0]';

% Compute new wind pressure vector.
aerototalforcevector = this.getWindPressureVector( this.WindPressure, this.SurfacePanel, ...
	this.Panels(1), this.Panels(2), this.Panels(3), this.Alphas, this.Betas, this.Gammas, rho, v, tempAtmos);

% Update values for wind pressure vector.
this.WindPressureVector = aerototalforcevector;

end % Function FlightControl.updWindPressures.
