% DRAWRECTANGLE - draw a rectangle
%
% drawRectangle(fp,x,y,width,height,lineWidth,color,fill)
%
% x and y are the left and top of the rectangle (in pixels)
% color is the edge color (default 'black')
% fill is the fill color (default 'white')
%
% % x,y, width, height and lineWidth should be integers (they will be rounded
% otherwise)


function drawRectangle(fp,x,y,width,height,lineWidth,color,fill)

if nargin<6 || isempty(lineWidth)
    lineWidth = 4;
end
if nargin<7 || isempty(color)
    color = 'black';
end
if nargin<8 || isempty(fill)
    fill = 'white';
end

fprintf(fp,'<rect x="%d" y="%d" width="%d" height="%d" stroke="%s" stroke-width="%d" fill="%s"/>\n',...
    round(x),round(y),round(width),round(height),color,round(lineWidth),fill);