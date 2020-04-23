sprite_index = spr_baddie_attack;
timer--;
speed = 0;
if(timer <= 0){
	//var attack = instance_create_layer(x+image_xscale*(abs(sprite_width)),y,layer,obj_attack_check);
	var attack = instance_create_layer(x,y,layer,obj_attack_check);
	//var attack = instance_create_depth(x,y,depth,obj_attack_check);
	attack.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
	attack.attacker = "bad";
	timer = maxtime;
}
if(distance_to_object(obj_player) > attack_dist){
	state = baddie_states.move;
	timer = maxtime;
}