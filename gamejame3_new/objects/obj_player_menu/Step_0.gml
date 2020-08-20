var move_v,menu_press,select,back;
for(var i=0;i<12;i++){
	move_v = gamepad_axis_value(i, gp_axislv);
	menu_press = gamepad_button_check_pressed(i,gp_start);
	select = gamepad_button_check_pressed(i,gp_face1);
	back = gamepad_button_check_pressed(i,gp_face2);
	if(move_v != 0 || menu_press || select || back){
		break;
	}
}
if(menu_press){
	menu = !menu;
	button_yoff = -(room_height/4)*3;
}

if(room != rm_join){
	audio_pause_sound(join_music);
	audio_resume_sound(level_music);
}else{
	audio_pause_sound(level_music);
	audio_resume_sound(join_music);
}
if(!instance_exists(obj_player)){
	audio_stop_sound(snd_tracks);
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
	instance_deactivate_object(obj_power_glitch);
	instance_deactivate_object(obj_power_up_parent);
	instance_deactivate_object(obj_power_up_spawner);
	if(move_v != 0){
		if(!was_input_pressed){
			audio_play_sound(snd_selection,3,0);
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
		audio_play_sound(snd_selection,3,0);
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
						selection = 0;
						menu = false;
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
					for(var i=0;i<array_length_1d(music_sounds);i++){
						audio_sound_gain(music_sounds[i],volumes[sound.music],0);
						audio_sound_gain(music_sounds[i],volumes[sound.music],audio_sound_length(music_sounds[i])*1000);
					}
					break;
				case 1:
					volumes[sound.sfx] += 0.1;
					if(volumes[sound.sfx] > 1) volumes[sound.sfx] = 0;
					for(var i=0;i<array_length_1d(sfx_sounds);i++){
						audio_sound_gain(sfx_sounds[i],volumes[sound.sfx],0);
						audio_sound_gain(sfx_sounds[i],volumes[sound.sfx],audio_sound_length(sfx_sounds[i])*1000);
					}
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