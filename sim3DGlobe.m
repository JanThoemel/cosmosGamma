close all;

% Set up a Globe display with a graticule. 
% The view is from above the North Pole.
figure;
ax = axesm('globe');
gridm('GLineStyle','-','Gcolor',[.7 .8 .9],'Grid','on');

% Show the axes, but hide the edges of the figure's box, and view it in 
% perspective rather than orthographically (the default perspective).
set(ax,'Box','off','Projection','perspective','Clipping','off');

% Plot orbit.
radius = 1.25;
orbit1 = plotCircularOrbit(ax,radius);

% Plot orbit.
radius = 1.25;
orbit2 = plotCircularOrbit(ax,radius);

% Rotate orbit in degrees.
directionX = [1 0 0];
directionY = [1 0 0];
directionZ = [1 0 0];
rotate(orbit1,directionX,87);
rotate(orbit2,directionX,89);

% Spin the globe one revolution using the supporting function "spin.m". 
% The globe spins rapidly.
spin();

% To make the globe opaque, create a sea-level data grid. 
% The globe is a uniform dark copper color with the grid overlaid.
base = zeros(180,360);
baseR = georefcells([-90 90],[0 360],size(base));
copperColor = [0.62 0.38 0.24];
hs = geoshow(base,baseR,'FaceColor',copperColor);

% Pop up the grid so it appears to float 2.5% above the surface.
setm(ax,'Galtitude',0.025);

% Freeze the aspect ratio properties and prevent the display from 
% stretching to fit the window.
axis vis3d;

% Spin the globe one revolution. The motion is slower, due to the need 
% to rerender the 180-by-360 mesh.
spin();

% Delete the copper mesh.
clmo(hs);

% Load topographic data.
load('topo');

% Scale the elevations to have an exaggeration of 50 (in units of Earth 
% radii) and plot the surface.
exaggeration_50 = 50; % Old value.
exaggeration_01 = 1; % New value for no exaggeration in elevations.
topo = topo*exaggeration_01 / 1000 / earthRadius('km');
hs = meshm(topo,topolegend,size(topo),topo);
demcmap(topo);

% Set height of the grid above the surface, in percentage.
grid_height = 20; % [percentage].
setm(ax,'Galtitude',grid_height/100);

% Set grid on Earth's surface to on/off.
setm(ax,'Grid','off');

% Show the Earth in space. Blacken the figure background, turn off the 
% three axes, and spin again.
set(gcf,'color','black');
axis off;

% Apply lighting.
camlight right;
lighting Gouraud;
material ([.7, .9, .8]);
% spin();

% Add world coastlines from the global landareas shapefile and plot 
% them in light gray.
coastlines = shaperead('landareas','UseGeoCoords',true,'Attributes',{});
light_gray = [.7 .7 .7];
plotm([coastlines.Lat],[coastlines.Lon],'Color',light_gray);

% Add lakes.
lakes = shaperead('worldlakes','UseGeoCoords',true);
plotm([lakes.Lat],[lakes.Lon],'Color','cyan');

% Add rivers.
% rivers = shaperead('worldrivers','UseGeoCoords',true);
% plotm([rivers.Lat],[rivers.Lon],'Color','cyan');

% Add Luxembourg city.
lux = struct('Lat',49.6116,'Lon',6.1319);
plotm([lux.Lat],[lux.Lon],'Marker','.','MarkerSize',10,'Color','red');

zoom(1.5);

spin();

% Rotate globe without rotating orbits.




% spin.m: 
% Rotates a view around the equator, making one revolution in 5-degree 
% steps. A negative step value makes it rotate normally (west-to-east).
function spin()
  for i = 90:-5:-270
    view(i,23.5); % Earth's axis tilts by 23.5 degrees.
    drawnow;
  end
end

% plotCircularOrbit.m:
function orbit = plotCircularOrbit(axes,radius)
  teta = 0:0.01:2*pi;
  x = radius*cos(teta);
  y = radius*sin(teta);
  orbit = plot3(axes,x,y,zeros(1,numel(x)),'Color','red');
end
