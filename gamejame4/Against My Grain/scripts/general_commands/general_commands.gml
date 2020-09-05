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

function save_player_pose(){
	var file = file_text_open_write("Player_pose.txt");
	file_text_write_real(file,obj_head.x);
	file_text_writeln(file);
	file_text_write_real(file,obj_head.y);
	file_text_writeln(file);
	file_text_write_real(file,obj_head.phy_rotation);
	file_text_writeln(file);
	
	for(var i=0;i<ds_list_size(obj_head.body_list);i++){
		var body = ds_list_find_value(obj_head.body_list,i);
		var save_x,save_y;
		with(body){
			if(stay_with == creator){
				save_x = creator.x;
				save_y = creator.y;
			}else{
				var other_rot = stay_with.phy_rotation;
				save_x = stay_with.x-lengthdir_x(body_width,other_rot);
				save_y = stay_with.y+lengthdir_y(body_width,other_rot);
			}
		}
		file_text_write_real(file,body.x);
		file_text_writeln(file);
		file_text_write_real(file,body.y);
		file_text_writeln(file);
		file_text_write_real(file,body.phy_rotation);
		file_text_writeln(file);
	}
	file_text_close(file);
}
function get_player_pose(){
	var poses = ds_list_create();
	var file = file_text_open_read(working_directory + "Player_pose.txt");
	if(file != -1){
		while(!file_text_eof(file)){
			var xx = file_text_read_real(file);
			file_text_readln(file);
			var yy = file_text_read_real(file);
			file_text_readln(file);
			var rot = file_text_read_real(file);
			file_text_readln(file);
			ds_list_add(poses, xx, yy, rot);
		}
		file_text_close(file);
	}else{
		poses = -1;
	}
	return poses;
}