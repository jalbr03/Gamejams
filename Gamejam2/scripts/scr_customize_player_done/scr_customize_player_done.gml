var quitWasPressed = gamepad_button_check(self.controller_id, gp_face2);
var controller = controller_id;
var image = image_index;
var color = image_blend;

//playing around with the player
if(room_select_player == noone){
	room_select_player = instance_create_layer(room_width/2,room_height/2,layer,obj_player);
	
	with(room_select_player){
		controller_number = controller;
		image_index = image;
		image_blend = color;
		
	}
}
//if player wants to go back
if(quitWasPressed){
	if(global.players_ready){
		global.players_ready = false;
	}else{
		instance_destroy(room_select_player);
		room_select_player = noone;
		state = customstates.color;
		data_sent = false;
		ds_list_delete(obj_player_container.player_info,ds_list_find_index(obj_player_container.player_info,controller));
		ds_list_delete(obj_player_container.player_info,ds_list_find_index(obj_player_container.player_info,image));
		ds_list_delete(obj_player_container.player_info,ds_list_find_index(obj_player_container.player_info,color));
	}
}

#region sending off the player
if(global.players_ready == true && !data_sent){
	with(obj_player_container){
		ds_list_add(player_info,controller);
		ds_list_add(player_info,color);
	}
	data_sent = true;
}
#endregion
if(gamepad_button_check_pressed(controller_id, gp_start)){
	global.players_ready = true;
}