draw_set_halign(fa_center);
draw_set_valign(fa_center);

//menu
if(menu){
	for(var i=0;i<3;i++){
		if(!options){
			if(selection == i){
				draw_rectangle_color(x+button_size,y+button_height+button_yoff+(button_size*i),
									 x-button_size,y-button_height+button_yoff+(button_size*i),
									 c_black,c_black,c_gray,c_gray,0);
				draw_text_color(x,y+button_yoff+((button_size*i)),menu_options[i],c_white,c_white,c_white,c_white,1);
			}else{
				draw_rectangle_color(x+button_size,y+button_height+button_yoff+(button_size*i),
									 x-button_size,y-button_height+button_yoff+(button_size*i),
									 c_gray,c_gray,c_white,c_white,0);
				draw_text_color(x,y+button_yoff+((button_size*i)),menu_options[i],c_black,c_black,c_black,c_black,1);
			}
		}else{
			if(selection == i){
				draw_rectangle_color(x+button_size,y+button_height+button_yoff+(button_size*i),
									 x-button_size,y-button_height+button_yoff+(button_size*i),
									 c_black,c_black,c_gray,c_gray,0);
				draw_text_color(x,y+button_yoff+((button_size*i)),opt_options[i],c_white,c_white,c_white,c_white,1);
			}else{
				draw_rectangle_color(x+button_size,y+button_height+button_yoff+(button_size*i),
									 x-button_size,y-button_height+button_yoff+(button_size*i),
									 c_gray,c_gray,c_white,c_white,0);
				draw_text_color(x,y+button_yoff+((button_size*i)),opt_options[i],c_black,c_black,c_black,c_black,1);
			}
			if(i<2){
				draw_sprite(spr_sound, 1, x-button_size,y-button_height+button_yoff+(button_size*i))
				
				draw_sprite_ext(spr_sound,0,x-button_size,y-button_height+button_yoff+(button_size*i),
					volumes[i],1*volumes[i],0,c_white,1);
			}
		}
	}
}
				