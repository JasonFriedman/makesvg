% DRAWLINE - draw a line
%
% drawLine(fp,x1,y1,x2,y2,lineWidth,color)
%
% draws a line from x1,y1 to x2,y2 with width lineWidth (default 4) and given 
% color (default 'black')
%
% x1,y1,x2,y2 and lineWidth should be integers, they will be roudned
% otherwise

function drawLine(fp,x1,y1,x2,y2,lineWidth,color)

if nargin<6
    lineWidth = 4;
end
if nargin<7
    color = 'black';
end

fprintf(fp,'<line x1="%d" y1="%d" x2="%d" y2="%d" stroke="%s" stroke-width="%d"/>\n',...
    round(x1),round(y1),round(x2),round(y2),color,round(lineWidth));
