x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y = clamp(y, sprite_height/2, room_height - sprite_height/2);
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var plant_pickup = keyboard_check_pressed(vk_space);
var player_attack = mouse_check_button(mb_left);

moveH = right-left;
moveV = down-up;

if(player_attack) state = player_states.attack;
else{
	if(timer > 0) timer--;
	else timer = 0;
	if(plant_pickup) state = player_states.plant;
	else if((left || right || up || down) && state != player_states.plant) state = player_states.move;
	else state = player_states.idle;
}
maxtime = 10/player_speed;
spd = startspd+((player_speed-1));

script_execute(states[state]);
