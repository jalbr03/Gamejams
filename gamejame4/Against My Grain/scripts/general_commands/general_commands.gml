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
			//ds_list_insert(poses,0, rot);
			//ds_list_insert(poses,0, yy);
			//ds_list_insert(poses,0, xx);
		}
		file_text_close(file);
	}else{
		poses = -1;
	}
	return poses;
}