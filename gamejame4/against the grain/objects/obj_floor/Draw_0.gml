draw_self();
if(image_angle == 0){
	skew = (cos(animate)+0.5)*4;
	for(var i=0;i<grass_num;i++){
		var grass_type = ds_list_find_value(grass_types,i);
		draw_sprite_pos(spr_grass,grass_type,
			x+grass_size*i+skew,				y-grass_size/2,
			x+grass_size+(grass_size*i)+skew,	y-grass_size/2,
			x+grass_size+(grass_size*i),		y,
			x+grass_size*i,						y,1);
	
		var part = irandom(500);
		if(part == 0){
			instance_create_layer(x+grass_size*i+random(32),y,layer,obj_particle)
		}
	}
}