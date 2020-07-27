var quitWasPressed = gamepad_button_check(self.controller_id, gp_face2);
var controller = controller_id;
var image = image_index;
var color = image_blend;

//playing around with the player
if(room_select_player == noone){
	room_select_player = instance_create_layer(x,y,layer,obj_player);
	
	with(room_select_player){
		controller_number = controller;
		image = image_index;
		color = image_blend;
		
	}
}
//if player wants to go back
if(quitWasPressed){
	instance_destroy(room_select_player);
	room_select_player = noone;
	state = customstates.join;
	controller_id = -1;
	obj_multiplayer_start.number_of_players -= 1;
	if(global.players_ready){
		data_sent = false;
		global.players_ready = false;
		ds_list_delete(obj_player_container.player_info,ds_list_find_index(obj_player_container.player_info,controller));
		ds_list_delete(obj_player_container.player_info,ds_list_find_index(obj_player_container.player_info,image));
		ds_list_delete(obj_player_container.player_info,ds_list_find_index(obj_player_container.player_info,color));
	}
}

#region sending off the player
if(global.players_ready == true && !data_sent){
	with(obj_player_container){
		ds_list_add(player_info,controller);
		ds_list_add(player_info,image);
		ds_list_add(player_info,color);
	}
	data_sent = true;
}
#endregion