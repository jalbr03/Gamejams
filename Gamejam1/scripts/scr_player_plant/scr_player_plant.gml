if(current_carrying_plant == noone){
	var crop = instance_place(x,y,obj_crop_parent);
	if(crop){
		var plant_cost = crop.cost
		if(money - plant_cost >= 0 && crop.type == "buyable"){
			current_carrying_plant = crop.object_index;
			money -= plant_cost;
		}
	}
}else{
	if(place_meeting(x,y,obj_plant_space)){
		var crop = instance_create_depth(x,y+sprite_height/2,depth,current_carrying_plant);
		crop.depth = depth;
		
		current_carrying_plant = noone;
	}
}
