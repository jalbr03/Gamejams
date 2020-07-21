if(room == rm_join){
	if(!instance_exists(obj_player)){
		ds_list_clear(player_info);
	}
	dropped_down = false;
}else if(!dropped_down){
	for(var i=0;i<ds_list_size(player_info)/2;i++){
		var player = instance_create_layer(x+random(32),y,"tractors",obj_drop_down);
		print(i)
		player.controller_number = ds_list_find_value(player_info,i*2);
		player.image_blend = ds_list_find_value(player_info,(i*2)+1);
	}
	dropped_down = true;
}