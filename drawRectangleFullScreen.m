% DRAWRECTANGLEFULLSCREEN - draw a rectangle covering the whole image
% e.g., as a background
%
% drawRectangleFullScreen(fp,color)

function drawRectangleFullScreen(fp,color)

fprintf(fp,'<rect width="100%%" height="100%%" fill="%s"/>\n',color);
