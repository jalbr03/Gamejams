enum player_states{
	join,
	level
}
state = -1;
max_size = 0.1;
image_xscale = max_size;
image_yscale = max_size;
image_speed = 0;
controller_number = -1;
spd = 5;

cool_down = false;
animate = 0;

specialing = false;
max_special_power = 3;
special_power = max_special_power;

t = 0;
a = 1;
b = 0.2;
xscale = 0;
yscale = 0;
alarm[0] = 1;

groups = [];
current_group = 0;
ability_array = [];
ability_state = -1;