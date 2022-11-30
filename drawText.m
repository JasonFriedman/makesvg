% DRAWTEXT - draw some text
%
% drawText(fp,x,y,text,fontsize,color)
%
% x,y are the postion of the box the text is drawn in (bottom left), should
% be integers (otherwise will be rounded)
%
% fontsize is the CSS font size (this is the size of the box the text is 
% draw in, including space above and below), default 16, should be an
% integer otherwise will be rounded
%
% color is the text color (default 'black')


function drawText(fp,x,y,text,fontsize,color)

if nargin<5 || isempty(fontsize)
    fontsize = 16;
end

if nargin<6 || isempty(color)
    color = 'black';
end

fprintf(fp,'<text x="%d" y="%d" font-size="%d" fill="%s">%s</text>\n',...
    round(x),round(y),round(fontsize),color,text);