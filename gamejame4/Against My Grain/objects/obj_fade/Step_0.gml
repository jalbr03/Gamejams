if(fade){
	image_alpha += 0.01*fade_dir;
	if(image_alpha == 0 || image_alpha == 1){
		fade = false;
		fade_dir *= -1;
	}
}
if(fade == false && room_to_goto != noone){
	room_goto(room_to_goto);
}