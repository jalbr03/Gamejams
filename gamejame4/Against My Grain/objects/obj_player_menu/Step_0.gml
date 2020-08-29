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
	if(room != rm_splash&&room != Rm_credits&&room != Rm_loading&&room != Rm_win){
		menu = !menu;
		button_yoff = -(room_height/4)*3;
	}
	if(room == Rm_level){
		if(instance_exists(obj_head)){
			save_player_pose();
		}
	}
}

//menu
if(menu){
	global.pause = true;
	if(room == Rm_title_screen){
		options = true;
	}
	if(!instance_exists(obj_menu_button)){
		if(!options){
			for(var i=0;i<array_length(menu_options);i++){
				var button = instance_create_layer(x,0,layer,obj_menu_button);
				button.number = i;
				button.menu = 0;
				button.max_number = array_length(menu_options);
				button.creator = id;
			}
		}else{
			for(var i=0;i<array_length(opt_options);i++){
				var button = instance_create_layer(x,0,layer,obj_menu_button);
				button.number = i;
				button.menu = 1;
				button.max_number = array_length(opt_options);
				button.creator = id;
			}
		}
	}
	//if(abs(mouse_x-x) < button_size){
	//	var mouse_dist = (mouse_y-y);
		
	//	if(mouse_dist < button_height){
	//		selection = 0;
	//	}else if(mouse_dist < button_height*5 && mouse_dist > button_height*3){
	//		selection = 1;
	//	}else if(mouse_dist < button_height*10 && mouse_dist > button_height*7){
	//		selection = 2;
	//	}
	//}
	
	button_yoff += -button_yoff/10;
	
	if(back){
		if(room == Rm_title_screen){
			menu = false;
		}
		if(!options){
			menu = false;
		}else if(menu){
			options = false;
		}
	}
	
	if(select){
		if(!options){
			switch(selection){
				case 0:
					menu = false;
					break;
				case 1:
					options = true;
					for(var i=0;i<instance_number(obj_menu_button);i++){
						instance_destroy(obj_menu_button);
					}
					for(var i=0;i<array_length(opt_options);i++){
						var button = instance_create_layer(x,0,layer,obj_menu_button);
						button.number = i;
						button.menu = 1;
						button.max_number = array_length(opt_options);
						button.creator = id;
					}
					
					selection = 0;
					break;
				case 2:
					if(room != Rm_title_screen){
						selection = 0;
						menu = false;
						if(instance_exists(obj_head)){
							save_player_pose();
						}
						obj_fade.fade = true;
						obj_fade.fade_dir = 1;
						obj_fade.room_to_goto = Rm_title_screen;
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
					window_set_fullscreen(!window_get_fullscreen());
					break;
				case 3:
					if(instance_exists(obj_head)){
						use_controller = !use_controller;
						obj_head.use_controller = use_controller;
					}
					break;
				case 4:
					options = false;
					if(room == Rm_title_screen){
						menu = false;
					}else{
						for(var i=0;i<instance_number(obj_menu_button);i++){
							instance_destroy(obj_menu_button);
						}
						for(var i=0;i<array_length(menu_options);i++){
							var button = instance_create_layer(x,0,layer,obj_menu_button);
							button.number = i;
							button.menu = 0;
							button.max_number = array_length(menu_options);
							button.creator = id;
						}
					}
					selection = 0;
					break;
			}
		}
	}
}else{
	if(instance_exists(obj_menu_button)){
		for(var i=0;i<instance_number(obj_menu_button);i++){
			instance_destroy(obj_menu_button);
		}
	}
	global.pause = false;
}