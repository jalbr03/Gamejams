//var left = keyboard_check(ord("A"));
//var right = keyboard_check(ord("D"));

//var move = right-left;

phy_rotation = -point_direction(x,y,mouse_x,mouse_y);

phy_linear_velocity_x += lengthdir_x(acceleration,phy_rotation);
phy_linear_velocity_y -= lengthdir_y(acceleration,phy_rotation);

var top_spd_x = lengthdir_x(top_speed,phy_rotation);
var top_spd_y = -lengthdir_y(top_speed,phy_rotation);
phy_linear_velocity_x = clamp(phy_linear_velocity_x,-top_spd_x,top_spd_x);
phy_linear_velocity_y = clamp(phy_linear_velocity_y,0,top_spd_y);