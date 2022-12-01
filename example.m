% Example of how to use makesvg

% create a filehandle (will create / overwrite the file)
fp = fopen('ugly.svg','w');

% start the svg with a width of 400 and height of 300
startsvg(fp,400,300);

% draw a rectangle as background
drawRectangleFullScreen(fp,'gray');

% draw a circle
drawCircle(fp,100,100,20,4,'red','blue');

% draw an ellipse
drawEllipse(fp,200,100,30,20,2,'blue','red');

% draw a square
drawSquare(fp,150,200,50,5,'orange','white');

% draw a rectangle
drawRectangle(fp,250,200,20,50,3,'black','brown');

% draw a line
drawLine(fp,300,50,300,100,1,'green');

% draw a spiral
drawSpiral(fp,45,230,4,10,-1,1000,'brown','white',2);

% write some text
drawText(fp,50,290,'Here is some text',30,'blue');

% write some wrapped text (Won't work with most svg viewers / converters)
drawWrappedText(fp,100,20,250,200,'This is a large amount of text that cannot fit on one line',30,'brown','Serif');

endsvg(fp);

fclose(fp);

% The next line requires imagemagick to be installed
% ! /usr/local/bin/convert ugly.svg ugly.jpg
