sprite_index = spr_baddie_dead;
speed = 0;
if(drop_money && is_dead){
	var money = instance_create_layer(x,y,layer,obj_money);
	money.value = kill_value;
	drop_money = false;
	depth = -y;
}
