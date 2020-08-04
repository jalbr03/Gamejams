if(global.money >= value){
	var coin = instance_create_layer(x,y,layer,obj_coin);
	coin.add = false;
	coin.number = value;
	var item = instance_create_layer(x,y,layer,sell_item);
	item.grab = true;
	item.image_index = 1;
	global.money -= value;
}
