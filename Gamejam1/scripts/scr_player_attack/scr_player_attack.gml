timer--;
speed = 0;
if(timer <= 0){
	//var attack = instance_create_layer(x+image_xscale*(abs(sprite_width)),y,layer,obj_attack_check);
	//var attack = instance_create_layer(x,y,layer,obj_attack_check);
	sprite_index = spr_player_attack;
	var attack = instance_create_depth(x,y,depth,obj_attack_check);
	attack.image_angle = point_direction(x,y,mouse_x,mouse_y);
	attack.attacker = "good";
	attack.damage = player_strength;
	timer = maxtime;
	var mouse_side = sign(mouse_x-x);
	if(mouse_side != 0) image_xscale = mouse_side;
}
