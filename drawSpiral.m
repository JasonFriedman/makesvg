% DRAWSPIRAL - draw an Archimedes spiral
%
% drawSpiral(fp,x,y,rotations,widthbetweenrotations,direction,numpoints,color,fill,linewidth)
%
% x and y are the center of the spiral (in pixels)
% rotations - how many rotations for the spiral to have (default 5)
% widthbetweenrotations - distance between rotations (in pixels)
% direction - -1 = clockwise, +1 = anticlockwise (from the center out), default -1 = clockwise
% numpoints - how many points to use to draw the spiral (default 100)
% color is the edge color (default 'black')
% fill is the fill color (default 'white')
%
% x,y and radius should be integers (they will be rounded otherwise)

function drawSpiral(fp,x,y,rotations,widthbetweenrotations,direction,numpoints,color,fill,lineWidth)

if nargin<4 || isempty(rotations)
    rotations = 5;
end
if nargin<5 || isempty(widthbetweenrotations)
    widthbetweenrotations = 20;
end
if nargin<6 || isempty(direction)
    direction = -1;
end
if nargin<7 || isempty(numpoints)
    numpoints = 1000;
end
if nargin<8 || isempty(color)
    color = 'black';
end
if nargin<9 || isempty(fill)
    fill = 'white';
end
if nargin<10 || isempty(lineWidth)
    lineWidth = 1;
end

if ~any(direction==[-1 1])
    error('Direction must be -1 or 1');
end

% x = 0;
% y = 0;
% 
theta = linspace(0,direction*(rotations * 2 * pi),numpoints);
r = widthbetweenrotations ./ (2*pi) .* theta; % distance between rotations is 2*pi*b
spiralx = r .* cos(theta-pi/2) + x;
spiraly = r .* sin(theta-pi/2) + y;
% figure;
% plot(spiralx,spiraly)


fprintf(fp,'<polyline stroke="%s" stroke-width="%d" fill="%s" points="', ...
    color,lineWidth,fill);

for k=1:numel(spiralx)
    fprintf(fp,' %d,%d',spiralx(k),spiraly(k));
end

fprintf(fp,'"/>\n');