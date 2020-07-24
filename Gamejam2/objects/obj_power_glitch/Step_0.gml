var glitch = irandom(10);
if(glitch == 0){
	var rain = instance_create_depth(x+(random_range(sprite_width/2,-sprite_width/2)),
		y+(random_range(sprite_height/2,-sprite_height/2)),-1,obj_rain);
	rain.grv = -1;
	rain.life_span = 10;
}