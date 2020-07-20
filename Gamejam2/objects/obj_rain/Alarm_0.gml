if(!tail){
	y += spd;
	if(distance_to_object(obj_rain)>10){
		var trail = instance_create_layer(x,y,layer,obj_rain);
		trail.tail = true;
	}
	var destroy = irandom(100);
	if(destroy == 0){
		instance_destroy();
	}
}else{
	image_alpha-=0.008;
}
if(image_alpha <= 0 || y > room_height){
	instance_destroy();
}
var change_char = irandom(10);
if(change_char == 0){
	char = irandom(array_length_1d(chars)-1);
}