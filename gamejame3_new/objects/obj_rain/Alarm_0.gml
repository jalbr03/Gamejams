if(!tail){
	y += spd*grv;
	if(distance_to_object(obj_rain)>10){
		var trail = instance_create_depth(x,y,1,obj_rain);
		trail.tail = true;
	}
	var destroy = irandom(life_span);
	if(destroy == 0){
		instance_destroy();
	}
}else{
	image_alpha-=0.008;
}
if(image_alpha <= 0 || y > room_height){
	instance_destroy();
}
var change_char = irandom(50);
if(change_char == 0){
	char = irandom(array_length_1d(chars)-1);
}