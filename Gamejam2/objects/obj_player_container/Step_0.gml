if(room == rm_join){
	if(!instance_exists(obj_player)){
		ds_list_clear(player_info);
	}
}else if(!instance_exists(obj_player)){
	for(var i=0;i<ds_list_size(player_info);i++){
		var player = instance_create_layer(x,y,"tractors",obj_player);
		player.controller_number = ds_list_find_value(player_info,0);
		player.image_blend = ds_list_find_value(player_info,1);
	}
}