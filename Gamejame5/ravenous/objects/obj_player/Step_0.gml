var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));

var move = right-left;
hsv = move*spd;
phy_rotation += hsv/50;

phy_linear_velocity_x = hsv;

if(alarm[0] == -1) alarm[0] = fps/animate_speed;

if(has_skin){
	spd = fast_spd;
}
if(has_heart){
	hp = large_hp;
}
if(has_eyes){
	var eyes = mouse_check_button(mb_left);
	if(eyes && !eyes_out){
		instance_create_layer(x,y,layer,obj_eyes);
		eyes_out = true;
	}
}