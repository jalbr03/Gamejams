if(fade){
	image_alpha += 0.01*fade_dir;
	if(image_alpha == 0 || image_alpha == 1){
		fade = false;
		fade_dir *= -1;
	}
}
if(fade == false && room_to_goto != noone){
	print(room_to_goto);
	room_goto(room_to_goto);
}