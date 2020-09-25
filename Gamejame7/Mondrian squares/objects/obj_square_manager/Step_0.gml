//for(var i=0;i<array_length(global.groups);i++){
//	for(var j=0;j<array_length(global.groups[i]);j++){
//		print(global.groups[i][j]);
//	}
//}

//print(array_length(global.groups))
mouse = mouse_check_button(mb_left);
if(!mouse){
	#region release regroup
	if(last_mouse != mouse){
		var next_group = array_length(global.groups);
		//var temp_list = global.groups;
		for(var i=0;i<ds_list_size(selected_list);i++){
			with(ds_list_find_value(selected_list ,i)){
				group_col = other.group_col;
				global.groups[grid_pose[0]][grid_pose[1]] = noone;
				global.groups[next_group][i] = id;
				grid_pose = [next_group,i];
			}
		}
		//global.groups = temp_list;
		//global.groups = organize_list();
		var test = organize_list();
		global.groups = test;
		global.passable = grid_scan();
		if(global.passable){
			score_update();
		}
		new_color++;
		if(new_color == max_colors) new_color = 0;
		group_col = ds_list_find_value(colors,new_color);
	}
	#endregion
	start_mouse = [mouse_x,mouse_y];
}else{
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
//print(array_length(global.groups));