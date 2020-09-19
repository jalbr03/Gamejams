current_debug_mode = false;
pause = true;
show_debug_overlay(current_debug_mode);
cellSize = 16;

width = room_width div cellSize;
height = room_height div cellSize;
fillPercentage = 45;
smoothness = 10;
mapData = ds_grid_create(width, height);

time_steps = 10;

if(caves){
	cave_Generate();
	//Apply();
	repeat(smoothness) {
	    SmoothMap();
	}
}else if(Conway){
	Conway_Generate();
	choose_to_die();
}else if(smooth){
	smooth_Generate();
	smooth_choose_to_die();
}