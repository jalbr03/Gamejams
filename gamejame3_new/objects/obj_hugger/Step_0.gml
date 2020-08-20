if(place_meeting(x,y,obj_player)){
	if(!place_meeting(x,y,creator)){
		hug = true;
	}
}
if(!hug){
	x += lengthdir_x(spd,image_angle);
	y += lengthdir_y(spd,image_angle);
}else{
	spd = 0;
	if(!instance_exists(obj_heart)){
		var heart = instance_create_layer(x,y,layer,obj_heart)
		heart.creator = creator;
	}
}