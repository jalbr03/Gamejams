draw_sprite_ext(sprite_index,0,
	clamp(x, sprite_width/2, room_width - sprite_width/2),
	clamp(y, sprite_height/2, room_height - sprite_height/2),image_xscale,image_yscale,0,c_white,1);