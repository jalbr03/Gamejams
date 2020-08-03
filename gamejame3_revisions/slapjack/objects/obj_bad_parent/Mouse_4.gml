if(store){
	var item = instance_create_layer(x,y,layer,asset_get_index(object_get_name(object_index)));
	item.store = false;
	item.grab = true;
	item.image_index = 1;
	with(item){
		physics_set_density(self,0.5);
	}
	print("make");
}else{
	grab = true;
}