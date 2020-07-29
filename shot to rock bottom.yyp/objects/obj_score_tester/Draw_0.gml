draw_set_font(fon_score)
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_ext_transformed_color(room_width/2,room_height/2,time_alive,10,10000,
	1,1,0,
	c_gray,c_dkgray,c_gray,c_dkgray,1);
if(alarm[3] == -1) alarm[3] = fps;
