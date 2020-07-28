enum player_states{
	join,
	level
}
states_array = [];
state = -1;
max_size = 0.1;
image_xscale = max_size;
image_yscale = max_size;
image_speed = 0;
controller_number = -1;
spd = 5;
locked = false;
look_x = 0;
look_y = 0;
dashing = false;
cool_down = false;
timer = 0;
animate = 0;
grow_spd = 0;
specialing = false;
max_special_power = 3;
special_power = max_special_power;
alarm[0] = 5;

ability_group1 = [scr_all_sides, scr_top, scr_corners, scr_big_boy];
groups = [ability_group1];
current_group = 0;