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
		instance_create_layer(x,y+sprite_height/2,layer,current_carrying_plant);
		current_carrying_plant = noone;
	}
}
