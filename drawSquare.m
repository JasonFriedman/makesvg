% DRAWSQUARE - draw a square
%
% drawSquare(fp,x,y,sidewidth,lineWidth,color,fill)
%
% x and y are the left and top of the square (in pixels)
% sidewidth is the side width of the square (in pixels)
% color is the edge color (default 'black')
% fill is the fill color (default 'white')
%
% x,y, sidewidth and lineWidth should be integers (they will be rounded
% otherwise)

function drawSquare(fp,x,y,sidewidth,lineWidth,color,fill)

drawRectangle(fp,x,y,sidewidth,sidewidth,lineWidth,color,fill);

