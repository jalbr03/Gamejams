if(instance_exists(obj_camera)){
	var camerax = camera_get_view_x(view_camera[0])+view_get_wport(0)/2;
	var cameray = camera_get_view_y(view_camera[0])+view_get_hport(0)/2;
	x = camerax;
	y = cameray;
}

var menu_press = false;
var select
var back = false;

if(!menu){
	menu_press = keyboard_check_pressed(vk_escape);
}else{
	back = keyboard_check_pressed(vk_escape);
}
select = mouse_check_button_pressed(mb_left);


if(menu_press){
	menu = !menu;
	button_yoff = -(room_height/4)*3;
}

//menu
if(menu){
	if(abs(mouse_x-x) < button_size){
		var mouse_dist = (mouse_y-y);
		print(mouse_dist);
		
		if(mouse_dist < button_height){
			selection = 0;
		}else if(mouse_dist < button_height*5 && mouse_dist > button_height*3){
			selection = 1;
		}else if(mouse_dist < button_height*10 && mouse_dist > button_height*7){
			selection = 2;
		}
	}
	
	button_yoff += -button_yoff/10;
	
	if(back){
		if(!options){
			menu = false;
		}else if(menu){
			options = false;
		}
	}
	
	if(select){
		//audio_play_sound(snd_selection,3,0);
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
					if(room != Rm_title_screen){
						if(global.safe_to_save){
							selection = 0;
							menu = false;
							if(instance_exists(obj_head)){
								highscore_clear();
								highscore_add("player posex",obj_head.x);
								highscore_add("player posey",obj_head.y);
							}
							obj_fade.fade = true;
							obj_fade.fade_dir = 1;
							obj_fade.room_to_goto = Rm_title_screen;
						}else{
							menu_options[2] = "You must be on flat ground";
							alarm[0] = fps*3;
						}
					}
					break;
			}
		}else{
			switch(selection){
				case 0:
					volumes[sound.music] += 0.1;
					if(volumes[sound.music] > 1) volumes[sound.music] = 0;
					for(var i=0;i<array_length(music_sounds);i++){
						audio_sound_gain(music_sounds[i],volumes[sound.music],0);
						audio_sound_gain(music_sounds[i],volumes[sound.music],audio_sound_length(music_sounds[i])*1000);
					}
					break;
				case 1:
					volumes[sound.sfx] += 0.1;
					if(volumes[sound.sfx] > 1) volumes[sound.sfx] = 0;
					for(var i=0;i<array_length(sfx_sounds);i++){
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