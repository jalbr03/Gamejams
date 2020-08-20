draw_set_halign(fa_center);
draw_set_valign(fa_center);

//menu
if(menu){
	for(var i=0;i<3;i++){
		if(!options){
			if(selection == i){
				draw_rectangle_color((room_width/2)+button_size,(room_height/2)+button_size/3+button_yoff+(button_size*i),
									 (room_width/2)-button_size,(room_height/2)-button_size/3+button_yoff+(button_size*i),
									 c_gray,c_gray,c_black,c_black,0);
				draw_text_color((room_width/2),(room_height/2)+button_yoff+((button_size*i)),menu_options[i],c_white,c_white,c_white,c_white,1);
			}else{
				draw_rectangle_color((room_width/2)+button_size,(room_height/2)+button_size/3+button_yoff+(button_size*i),
									 (room_width/2)-button_size,(room_height/2)-button_size/3+button_yoff+(button_size*i),
									 c_gray,c_gray,c_white,c_white,0);
				draw_text_color((room_width/2),(room_height/2)+button_yoff+((button_size*i)),menu_options[i],c_black,c_black,c_black,c_black,1);
			}
		}else{
			if(selection == i){
				draw_rectangle_color((room_width/2)+button_size,(room_height/2)+button_size/3+button_yoff+(button_size*i),
									 (room_width/2)-button_size,(room_height/2)-button_size/3+button_yoff+(button_size*i),
									 c_gray,c_gray,c_black,c_black,0);
				draw_text_color((room_width/2),(room_height/2)+button_yoff+((button_size*i)),opt_options[i],c_white,c_white,c_white,c_white,1);
			}else{
				draw_rectangle_color((room_width/2)+button_size,(room_height/2)+button_size/3+button_yoff+(button_size*i),
									 (room_width/2)-button_size,(room_height/2)-button_size/3+button_yoff+(button_size*i),
									 c_gray,c_gray,c_white,c_white,0);
				draw_text_color((room_width/2),(room_height/2)+button_yoff+((button_size*i)),opt_options[i],c_black,c_black,c_black,c_black,1);
			}
			if(i<2){
				draw_sprite(spr_sound, 1, (room_width/2)-button_size,(room_height/2)-button_size/3+button_yoff+(button_size*i))
				
				draw_sprite_ext(spr_sound,0,(room_width/2)-button_size,(room_height/2)-button_size/3+button_yoff+(button_size*i),
					volumes[i],1*volumes[i],0,c_white,1);
			}
		}
	}
}
				