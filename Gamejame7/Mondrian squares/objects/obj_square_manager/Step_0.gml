mouse = mouse_check_button(mb_left);
if(start){
	if(!mouse){
		#region release regroup
		if(last_mouse != mouse){
			var next_group = array_length(global.groups);
			for(var i=0;i<ds_list_size(selected_list);i++){
				with(ds_list_find_value(selected_list ,i)){
					group_col = other.group_col;
					global.groups[grid_pose[0]][grid_pose[1]] = noone;
					global.groups[next_group][i] = id;
					grid_pose = [next_group,i];
				}
			}
			var test = organize_list();
			global.groups = test;
			global.passable = grid_scan();
			if(global.passable){
				score_update();
			}
		}
		#endregion
	}else{
		if(last_mouse != mouse){
			start_mouse = [mouse_x,mouse_y];
		}
		var amount1 = abs(start_mouse[0]-mouse_x)/(grid_width*sprite_width*2);
		var amount2 = abs(start_mouse[1]-mouse_y)/(grid_height*sprite_width*2);
		group_col = make_color_hsv((amount1+amount2)*255,255,255);
		//get the blocks
		ds_list_clear(selected_list);
		var num_of_boxes = collision_rectangle_list(start_mouse[0],start_mouse[1],mouse_x,mouse_y,obj_square,0,1,selected_list ,0);
		for(var i=0;i<num_of_boxes;i++){
			with(ds_list_find_value(selected_list ,i)){
				image_blend = other.group_col;
			}
		}
	}
	last_mouse = mouse;
}
