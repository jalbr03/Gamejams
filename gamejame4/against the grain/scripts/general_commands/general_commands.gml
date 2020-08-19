// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function half(value, midpoint, range_min, range_max){
	if(value > midpoint){
		return range_max;
	}if(value < midpoint){
		return range_min;
	}
}
function print(input_string){
	show_debug_message(input_string);
}