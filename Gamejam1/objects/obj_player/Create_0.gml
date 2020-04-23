#region states
enum player_states{
	idle,
	move,
	plant,
	attack
}
states[player_states.idle] = scr_player_idle;
states[player_states.move] = scr_player_move;
states[player_states.plant] = scr_player_plant;
states[player_states.attack] = scr_player_attack;

state = player_states.idle;
#endregion
image_speed = 1;
maxtime = 30;
timer = 0;

startspd = 5
spd = startspd;

maxhp = 5;
hp = maxhp;

line_spacing = 40;
