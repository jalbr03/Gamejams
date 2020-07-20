var col1 = argument0;
var col2 = argument1;

var avr_colR = (color_get_red(col1) + color_get_red(col2))/2;
var avr_colG = (color_get_green(col1) + color_get_green(col2))/2;
var avr_colB = (color_get_blue(col1) + color_get_blue(col2))/2;

make_color_rgb(avr_colR,avr_colG,avr_colB);