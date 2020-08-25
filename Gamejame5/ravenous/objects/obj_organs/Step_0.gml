if(alarm[0] == -1 && freez) alarm[0] = fps*(num/2);
if(extract){
	print(ceil(ystart-y));
	if(ceil(ystart-y) < extract_dist){
		y -= (y-extract_pose)/10;
	}else{
		extract = false;
	}
}else if(!freez){
	var player = collision_circle(x,y,sprite_width+3,obj_player,0,1);
	if(place_meeting(x,y,obj_player)){
		if(player){
			switch(upgrades_list){
				case "skin":
					player.amount_to_skin += amount;
					if(player.amount_to_skin >= player.max_needed){
						player.has_skin = true;
					}
				break;
				case "heart":
					player.amount_to_heart += amount;
					if(player.amount_to_heart >= player.max_needed){
						player.has_heart = true;
					}
				break;
				case "kidney":
					player.amount_to_kidney += amount;
					if(player.amount_to_heart >= player.max_needed){
						player.has_kidney = true;
					}
				break;
			}
		}
		instance_destroy(self);
	}
	x -= (x-obj_player.x)/10;
	y -= (y-obj_player.y)/10;
}