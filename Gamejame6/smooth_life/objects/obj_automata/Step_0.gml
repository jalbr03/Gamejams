if(!pause){
	if(Conway || smooth){
		if(alarm[0] == -1) alarm[0] = fps/time_steps;
	}
}

if(mouse_check_button(mb_left)){
	mapData[# mouse_x div cellSize, mouse_y div cellSize] = 1;
}
if(mouse_check_button(mb_right)){
	mapData[# mouse_x div cellSize, mouse_y div cellSize] = 0;
}
