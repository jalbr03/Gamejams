if(!hit){
	if(sticky){
		physics_joint_weld_create(self,other,x,y,0,10,10000,false);
		global.money += hit_value;
		var coin = instance_create_layer(x,y,layer,obj_coin);
		coin.add = true;
		coin.number = hit_value;
	}else if(phy_linear_velocity_x > 2400 || phy_linear_velocity_y > 2400){
		global.money += hit_value;
		var coin = instance_create_layer(x,y,layer,obj_coin);
		coin.add = true;
		coin.number = hit_value;
	}
	
	hit = true;
	global.money += hit_value;
	var coin = instance_create_layer(x,y,layer,obj_coin);
	coin.add = true;
	coin.number = hit_value;
}