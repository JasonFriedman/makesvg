% DRAWWRAPPEDTEXT - draw some wrapped text
%
% NOTE: THIS IS NOT SUPPORTED BY STANDARD SVG SO USES HTML AS A 
% FOREIGN OBJECT. THIS MEANS THE TEXT WILL NOT BE VIEWABLE IN MANY
% SVG VIEWERS / CONVERTERS (although in web browsers it should be fine)
%
% drawWrappedText(fp,x,y,text,fontsize,color,fontfamily,alignment)
%
% x,y are the top and left of the box the text is drawn in, width and
% height the size of the box, should be integers, otherwise will be rounded
%
% fontsize is the CSS font size (this is the size of the box the text is 
% draw in, including space above and below), default 16, should be an 
% integer, otherwise will be rounded
%
% color is the text color (default 'black')
%
% fontfamily is the font to use (default is Arial)
%
% alignment is the text alignment (one of 'left','right','center' or
% 'justify'), default 'left'


function drawWrappedText(fp,x,y,width,height,text,fontsize,color,fontfamily,alignment)

if nargin<7 || isempty(fontsize)
    fontsize = 16;
end

if nargin<8 || isempty(color)
    color = 'black';
end

if nargin<9 || isempty(fontfamily)
    fontfamily = 'Arial';
end

if nargin<10 || isempty(alignment)
    alignment = 'left';
end

fprintf(fp,'<foreignObject x="%d" y="%d" width="%d" height="%d">\n',...
    round(x),round(y),round(width),round(height));
fprintf(fp,'<p xmlns="http://www.w3.org/1999/xhtml" style="font-size:%dpx;color:%s;font-family:%s;text-align:%s">\n',...
    round(fontsize),color,fontfamily,alignment);

fprintf(fp,'%s\n',text);

fprintf(fp,'</p>\n</foreignObject>\n');