if(global.money >= value){
	var item = instance_create_layer(x,y,layer,sell_item);
	item.grab = true;
	item.image_index = 1;
	global.money -= value;
}
