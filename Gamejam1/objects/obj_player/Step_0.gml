var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var plant_pickup = keyboard_check_pressed(vk_space);

moveH = right-left;
moveV = down-up;

if(plant_pickup) state = player_states.plant;
else if((left || right || up || down) && state != player_states.plant) state = player_states.move;
else state = player_states.idle;

print(current_carrying_plant);

script_execute(states[state]);
