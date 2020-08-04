if(phy_linear_velocity_y > 600 && other.y>y){
	global.money += 3;
	var coin = instance_create_layer(x,y,layer,obj_coin);
	coin.add = true;
	coin.number = 3;
}