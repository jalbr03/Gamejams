if(current_carrying_plant == noone){
	var crop = instance_place(x,y,obj_crop_parent);
	if(crop){
		var plant_cost = crop.cost
		if(money - plant_cost >= 0 && crop.type == "buyable"){
			current_carrying_plant = crop.object_index;
			money -= plant_cost;
		}else if(crop.type == "plant"){
			if(crop.state == crop.max_state){
				switch crop.add_to{
					case "strength":
					player_strength += crop.amount_to_add;
					break;
					case "speed":
					player_speed += crop.amount_to_add;
					break;
					case "money":
					player_money += crop.amount_to_add;
					break;
					case "HP":
					if(hp < maxhp) hp += crop.amount_to_add;
					break;
				}
				instance_destroy(crop);
			}
		}
	}
}else{
	if(place_meeting(x,y,obj_plant_space)){
		var crop = instance_create_depth(x,y+sprite_height/2,depth,current_carrying_plant);
		crop.depth = depth;
		
		current_carrying_plant = noone;
	}
}
