var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var jump = keyboard_check(vk_space) || keyboard_check(ord("W"));
var is_floor = collision_line(x+sprite_width/2.2,y+(sprite_height/2)+1,
							  x-sprite_width/2.2,y+(sprite_height/2)+1,obj_static,0,1);

var move = right-left;

phy_linear_velocity_x = move*spd;

if(jump && is_floor){
	phy_linear_velocity_y = -jump_height;
}

if(place_meeting(x,y,obj_goal)){
	win = true;
}
if(win){
	physics_pause_enable(true);
	x = obj_goal.x;
	y = obj_goal.y;
	obj_goal.grow = true;
}