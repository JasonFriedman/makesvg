% DRAWELLIPSE - draw an ellipse
%
% drawEllipse(fp,x,y,radiusx,radiusy,lineWidth,color,fill)
%
% x,y are the center of the ellipse (in pixels)
% radiusx, radiusy are the radii in the two directions
% color is the edge color (defult 'black')
% fill is the fill color (default 'white')

function drawEllipse(fp,x,y,radiusx,radiusy,lineWidth,color,fill)

if nargin<4 || isempty(radiusx)
    radiusx = 10;
end
if nargin<5 || isempty(radiusy)
    radiusy = 10;
end
if nargin<6 || isempty(lineWidth)
    lineWidth = 4;
end
if nargin<7 || isempty(color)
    color = 'black';
end
if nargin<8 || isempty(fill)
    fill = 'white';
end

fprintf(fp,'<ellipse cx="%d" cy="%d" rx="%d" ry="%d" stroke="%s" stroke-width="%d" fill="%s"/>\n',...
    x,y,radiusx,radiusy,color,lineWidth,fill);
