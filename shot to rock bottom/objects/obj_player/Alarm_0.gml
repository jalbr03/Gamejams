player_scritps = [scr_player_1,scr_player_2,scr_player_3];
states_array[player_states.join] = scr_player_join;
states_array[player_states.level] = player_scritps[player_number-1];
state = player_states.level;

if(state == player_states.level){
	switch(player_number){
		case(1):
			controller_number = 0;
			image_index = 0;
			image_blend = make_color_rgb(55,55,255);
			var otherplayer = instance_create_layer(x,y,layer,obj_player);
			otherplayer.player_number = 2;
			otherplayer.creator = self;
			break;
		case(2):
			controller_number = 1;
			depth = -1;
			image_index = 1;
			image_blend = make_color_rgb(255,215,20);
			break;
		case(3):
			controller_number = 2;
			image_index = 2;
			image_blend = make_color_rgb(255,55,55);
			break;
	}
}

gamepad_set_axis_deadzone(controller_number, 0.4);
