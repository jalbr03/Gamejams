if(alarm[0] == -1 && freez) alarm[0] = fps*(num/2);
if(extract){
	print(ceil(ystart-y));
	if(ceil(ystart-y) < extract_dist){
		y -= (y-extract_pose)/10;
	}else{
		extract = false;
	}
}else if(!freez){
	if(place_meeting(x,y,obj_player)){
		instance_destroy(self);
	}
	x -= (x-obj_player.x)/10;
	y -= (y-obj_player.y)/10;
}