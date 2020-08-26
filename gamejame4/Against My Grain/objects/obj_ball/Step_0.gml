if(!center && !orbital){
	if(x > room_width || x < 0){
		vspd *= -1;
	}if(y > room_height || y < 0){
		hspd *= -1;
	}

	x += vspd;
	y += hspd;
}
if(center){
	angle -= spd;
	global.orbit.x = x+lengthdir_x(dist,angle);
	global.orbit.y = y+lengthdir_y(dist,angle);
	global.orbit.angle += spd;
	camx = camera_get_view_x(camera);
	camy = camera_get_view_y(camera);
	x = camx+camw;
	y = camy+camh;
}else if(orbital){
	x = global.orbit.x+lengthdir_x(dist,global.orbit.angle+(number/num_of_orbitals)*360);
	y = global.orbit.y+lengthdir_y(dist,global.orbit.angle+(number/num_of_orbitals)*360);
}

if(life_span <= 0){
	image_alpha -= 0.05;
	if(image_alpha <= 0){
		instance_destroy(self);
	}
}else{
	life_span--;
}