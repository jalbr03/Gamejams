var move_v = gamepad_axis_value(0, gp_axislv);
var menu_press = gamepad_button_check_pressed(0,gp_start);
var select = gamepad_button_check_pressed(0,gp_face1);
var back = gamepad_button_check_pressed(0,gp_face2);

if(menu_press){
	menu = !menu;
	button_yoff = -(room_height/4)*3;
}

//menu
if(menu){
	instance_deactivate_object(obj_player);
	instance_deactivate_object(obj_avatar_select);
	instance_deactivate_object(obj_multiplayer_start);
	instance_deactivate_object(obj_slider_parent);
	instance_deactivate_object(obj_fin);
	instance_deactivate_object(obj_grid);
	instance_deactivate_object(obj_hugger);
	instance_deactivate_object(obj_heart);
	instance_deactivate_object(obj_drop_down);
	instance_deactivate_object(obj_player_droping);
	if(move_v != 0){
		if(!was_input_pressed){
			selection += sign(move_v);
			was_input_pressed = true;
			selection = clamp(selection,0,2);
		}
	}else{
		was_input_pressed = false;
	}
	button_yoff += -button_yoff/10;
	
	if(back && !options){
		menu = false;
	}
	
	if(select){
		if(!options){
			switch(selection){
				case 0:
					menu = false;
					break;
				case 1:
					options = true;
					selection = 0;
					break;
				case 2:
					if(room != rm_join){
						room_goto(rm_join);
					}else{
						game_end();
					}
					break;
			}
		}else{
			switch(selection){
				case 0:
					volumes[sound.music] += 0.1;
					if(volumes[sound.music] > 1) volumes[sound.music] = 0;
					break;
				case 1:
					volumes[sound.sfx] += 0.1;
					if(volumes[sound.sfx] > 1) volumes[sound.sfx] = 0;
					break;
				case 2:
					options = false;
					selection = 0;
					break;
			}
		}
	}
}else{
	instance_activate_all();
}