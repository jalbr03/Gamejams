sprite_index = spr_baddie_walk;
var dir = point_direction(x,y,obj_player.x,obj_player.y);
direction = dir;
var side = sign(x - obj_player.x);
speed = spd;

if(side != 0){
	image_xscale = -side;
}

if(distance_to_object(obj_player) < attack_dist){
	state = baddie_states.attack;
}