// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function grid_scan(){
	var passable = true;
	for(var i=0;i<array_length(global.groups);i++){
		var best_test_l = global.groups[i][0];
		var best_test_r = global.groups[i][0];
		for(var k=0;k<array_length(global.groups[i]);k++){
			var c_test = global.groups[i][k]
			if(c_test.x < best_test_l.x || c_test.y < best_test_l.y){
				best_test_l = c_test;
			}else if(c_test.x > best_test_r.x || c_test.y > best_test_r.y){
				best_test_r = c_test;
			}
		}
		var top_left = best_test_l;
		var bottom_right = best_test_r;
		var area = array_length(global.groups[i]);
		var test_width = (top_left.x-bottom_right.x-sprite_width)/sprite_width;
		var test_height = (top_left.y-bottom_right.y-sprite_width)/sprite_width;
		var test_area = abs(test_width*test_height);
		if(area != test_area){
			passable = false;
		}
		for(var j=0;j<array_length(global.groups);j++){
			var n_best_test_l = global.groups[j][0];
			var n_best_test_r = global.groups[j][0];
			for(var k=0;k<array_length(global.groups[j]);k++){
				var n_c_test = global.groups[j][k]
				if(n_c_test.x < n_best_test_l.x || n_c_test.y < n_best_test_l.y){
					n_best_test_l = n_c_test;
				}else if(n_c_test.x > n_best_test_r.x || n_c_test.y > n_best_test_r.y){
					n_best_test_r = n_c_test;
				}
			}
			
			var n_top_left = n_best_test_l;
			var n_bottom_right = n_best_test_r;
			var n_test_width = (n_top_left.x-n_bottom_right.x-sprite_width)/sprite_width;
			var n_test_height = (n_top_left.y-n_bottom_right.y-sprite_width)/sprite_width;
			if(i != j){
				if(n_test_width == test_width && n_test_height == test_height || n_test_width == test_height && n_test_height == test_width){
					
					passable = false;
					break;
				}
			}
		}
		if(!passable){
			break;
		}
	}
	return passable;
}

function draw_groups(){
	for(var i=0;i<array_length(global.groups);i++){
		var best_test_l = global.groups[i][0];
		var best_test_r = global.groups[i][0];
		var area = array_length(global.groups[i]);
		for(var k=0;k<array_length(global.groups[i]);k++){
			var c_test = global.groups[i][k]
			if(c_test.x < best_test_l.x || c_test.y < best_test_l.y){
				best_test_l = c_test;
			}else if(c_test.x > best_test_r.x || c_test.y > best_test_r.y){
				best_test_r = c_test;
			}
		}
		var top_left = best_test_l;
		var bottom_right = best_test_r;
		var col = top_left.group_col;
		var new_col = merge_color(col,c_black,0.5);
		var txt_col = merge_color(col,c_white,0.5);
		draw_rectangle_color(top_left.x-sprite_width/4,top_left.y-sprite_width/4,
		bottom_right.x+sprite_width/4,bottom_right.y+sprite_width/4,col,col,col,col,1);
		var mid_w = (bottom_right.x-top_left.x)/2;
		var mid_h = (bottom_right.y-top_left.y)/2;
		draw_circle_color(top_left.x+mid_w,top_left.y+mid_h,10*string_length(string(area)),new_col,new_col,0);
		draw_text_color(top_left.x+mid_w,top_left.y+mid_h,area,txt_col,txt_col,txt_col,txt_col,1)
	}
}

function score_update(){
	var areas = ds_list_create();
	for(var i=0;i<array_length(global.groups);i++){
		var area = array_length(global.groups[i]);
		ds_list_add(areas, area);
	}
	ds_list_sort(areas, true);
	var num_of_groups = ds_list_size(areas);
	var calc_score = 0;
	if(num_of_groups > 1){
		calc_score = abs(ds_list_find_value(areas,0) - ds_list_find_value(areas,num_of_groups-1));
	}else{
		calc_score = ds_list_find_value(areas,0);
	}
	global.new_score = calc_score;
}

function organize_list(){
	var temp_list = [];
	var next_group = 0;
	for(var i=0;i<array_length(global.groups);i++){
		var is_there_a_group = false;
		for(var j=0;j<array_length(global.groups[i]);j++){
			if(global.groups[i][j] != noone){
				is_there_a_group = true;
				temp_list[next_group][array_length(temp_list[next_group])] = global.groups[i][j];
				var box = global.groups[i][j];
				box.grid_pose = [next_group,array_length(temp_list[next_group])-1];
				//print("there is one "+string(next_group));
			}
		}
		if(is_there_a_group){
			next_group ++;
		}
	}
	return temp_list;
}
