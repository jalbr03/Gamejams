if(room == rm_join){
	if(!instance_exists(obj_player)){
		ds_list_clear(player_info);
	}
	dropped_down = false;
}else if(!dropped_down && room == room0){
	for(var i=0;i<ds_list_size(player_info)/4;i++){
		var player = instance_create_layer(x+random(32),y,"tractors",obj_drop_down);
		player.controller_number = ds_list_find_value(player_info,i*4);
		player.image_blend = ds_list_find_value(player_info,(i*4)+1);
		player.player_id = ds_list_find_value(player_info,(i*4)+2);
		print("player");
		print(ds_list_find_value(player_info,(i*4)+2));
	}
	dropped_down = true;
}