% DRAWCIRCLE - draw a circle
%
% drawCircle(fp,x,y,radius,lineWidth,color,fill)
%
% x and y are the center of the circle (in pixels)
% color is the edge color (default 'black')
% fill is the fill color (default 'white')
%
% x,y and radius should be integers (they will be rounded otherwise)

function drawCircle(fp,x,y,radius,lineWidth,color,fill)

if nargin<4 || isempty(radius)
    radius = 10;
end
if nargin<5 || isempty(lineWidth)
    lineWidth = 4;
end
if nargin<6 || isempty(color)
    color = 'black';
end
if nargin<7 || isempty(fill)
    fill = 'white';
end

fprintf(fp,'<circle cx="%d" cy="%d" r="%d" stroke="%s" stroke-width="%d" fill="%s"/>\n',...
    round(x),round(y),round(radius),color,lineWidth,fill);