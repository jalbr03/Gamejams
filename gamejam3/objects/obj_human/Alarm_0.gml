var xx = (obj_goal.x div 16)*16+8;
var yy = (obj_goal.y div 16)*16+8;

if(mp_grid_path(global.grid, path, x, y, xx, yy, 1) && !is_dead){
	path_start(path, 0.2, path_action_stop,false);
	//if(air < max_air){
		//air += 0.01;
	//}
}else{
	//if(air > 0){
		//air -= 0.01;
	//}
	path_start(path, 0, path_action_stop,false);
}
//if(air <= 0){
//	is_dead = true;
//}
