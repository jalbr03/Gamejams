timer--;
speed = 0;
if(timer <= 0){
	var attack = instance_create_layer(x+image_xscale*(abs(sprite_width)),y,layer,obj_attack_check);
	print(image_xscale)
	attack.attacker = self;
	timer = maxtime;
}
if(distance_to_object(obj_player) > attack_dist){
	state = baddie_states.move;
}