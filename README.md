# makesvg
 Create SVG files in matlab

This software is designed to create SVG files usings matlab, made up of basic shapes and texts.

It was written to create precise stimuli for running psychophysics / motor control experiments

Usage example:
```
% Open a text file for writing
fp = fopen('basis.svg','w');
% start the svg with a width of 400 and height of 300
startsvg(fp,400,300);
% draw a circle with a red line, filled with blue
drawCircle(fp,100,100,20,4,'red','blue');
% Finish the SVG file
endsvg(fp);
% close the file handle
fclose(fp);
```

See the file [example.m](example.m) for a full example

[![View makesvg on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/121458-makesvg)
