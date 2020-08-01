if(!is_dead){
	image_angle = cos(animate)*10
	animate += 0.1;
}else{
	image_angle = 90;
}
if(alarm[0] == -1) alarm[0] = fps/30;