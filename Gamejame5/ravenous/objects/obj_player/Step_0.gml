var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));

var move = right-left;
hsv = move*spd;
phy_rotation += hsv/50;

phy_linear_velocity_x = hsv;

if(alarm[0] == -1) alarm[0] = fps/animate_speed;