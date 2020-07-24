draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fon_points);
if(room == rm_points){
	draw_circle_color(room_width/2,room_height/2,room_width,c_gray,c_black,0);
	if(points_show >= 2){
		if(points_fall > 3){
			points_alpha += 0.01;
			points_spd += 0.01;
			points_fall -= points_spd;
		}else{
			if(alarm[0]==-1)alarm[0] = fps;
		}
	}else{
		points_show += 0.02;
	}
	for(var i=0;i<ds_list_size(player_info)/4;i++){
		var player_col = ds_list_find_value(player_info,(i*4)+1);
		draw_sprite_ext(spr_tractor,0,(room_width/3)*(i+1),room_height/2,3+(points_show/1),3+(points_show/1),0,player_col,points_show);
		draw_text_ext_transformed_color((room_width/3)*(i+1),(room_height/3)*2,
			ds_list_find_value(player_info,(i*4)+3),1,64,points_fall,points_fall,points_fall/10,
				c_white,c_white,c_white,c_white,points_alpha);
	}
}

