var fire = irandom(1);
if(fire == 0){
	//var xx = random_range(-sprite_width*2*((abs(image_angle))/100),sprite_width*2*((abs(image_angle))/100));
	//var yy = random_range(-sprite_width*2*((90-abs(image_angle))/100),sprite_width*2*((90-abs(image_angle))/100));
	var xx = random_range(lengthdir_x(sprite_width*2,image_angle+90),lengthdir_x(sprite_width*2,image_angle-90))
	var yy = random_range(lengthdir_y(sprite_height/2,image_angle+90),lengthdir_y(sprite_height/2,image_angle-90))
	part_system_auto(0.5,0.1, -0.02,-0.015, 1,1, 15,15, 90,c_red,5,620000,670000,
		xx,yy);
}
image_alpha = clamp(cos(alpha),0.1,0.5);
alpha += 0.015;
