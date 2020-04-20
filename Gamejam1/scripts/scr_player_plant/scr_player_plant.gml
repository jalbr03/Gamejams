if(current_carrying_plant == noone){
	var crop = instance_place(x,y,obj_crop_parent);
	if(crop){
		print(crop.object_index);
		//current_carrying_plant = asset_get_index(object_get_name(crop));
		current_carrying_plant = crop.object_index;
	}
}else{
	instance_create_layer(x,y,layer,current_carrying_plant);
	current_carrying_plant = noone;
	/*
	timer--;
	if(timer <= 0){
		instance_create_layer(x,y,layer,current_carrying_plant);
		current_carrying_plant = noone;
	}
	*/
}
