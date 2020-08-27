draw_self();
if(menu = 0){
	if(!close_to_mouse){
		draw_text_color(x,y,menu_options[number],c_white,c_white,c_white,c_white,1);
	}else{
		draw_text_color(x,y,menu_options[number],c_gray,c_gray,c_gray,c_gray,1);
	}
}else if(menu = 1){
	if(!close_to_mouse){
		draw_text_color(x,y,opt_options[number],c_white,c_white,c_white,c_white,1);
	}else{
		draw_text_color(x,y,opt_options[number],c_gray,c_gray,c_gray,c_gray,1);
	}
	if(number <= 1){
		draw_sprite(spr_sound, 1, x-audio_spr_width,y-sprite_height/2)
				
		draw_sprite_ext(spr_sound,0,x-audio_spr_width,y-sprite_height/2,
						  creator.volumes[number],
						1*creator.volumes[number],
						0,c_white,1);
	}else if(number == 3){
		draw_sprite(spr_controls,creator.use_controller,x+98,y);
	}
}