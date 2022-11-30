% STARTSVG - Start an SVG file with the given width and height
%
% startsvg(fp,width,height)
% 
% width and height are in pixels

function startsvg(fp,width,height)
fprintf(fp,'<?xml version="1.0" encoding="UTF-8"?>\n');
fprintf(fp,'<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 20001102//EN" "http://www.w3.org/TR/2000/CR-SVG-20001102/DTD/svg-20001102.dtd">\n');
fprintf(fp,'<svg version="1.1" height="%d" width="%d" xmlns="http://www.w3.org/2000/svg">\n',height,width);