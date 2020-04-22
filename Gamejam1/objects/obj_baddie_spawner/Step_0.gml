var spawn = irandom_range(0,500);
if(spawn == 0){
	var side = choose(0,1)*room_width;
	var height = random_range(0,room_height);
	instance_create_layer(side,height,layer,obj_baddie);
}