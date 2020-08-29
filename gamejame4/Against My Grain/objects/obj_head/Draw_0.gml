if(stick_tongue_out){
	offset += 0.05;
	var stick_out = abs(cos(offset))*sprite_width;
	draw_sprite_ext(spr_tongue,animate%10,x+(lengthdir_x(sprite_width-stick_out,-phy_rotation)),
										  y+(lengthdir_y(sprite_width-stick_out,-phy_rotation))
										  ,1,1,-phy_rotation,c_white,1);
	
	print("stick out "+string(stick_out));
	if(offset >= pi){
		stick_tongue_out = false;
	}
}else{
	offset = 0;
}

draw_self();
