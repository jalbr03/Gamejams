#region states
enum player_states{
	idle,
	move,
	plant
}
states[player_states.idle] = scr_player_idle;
states[player_states.move] = scr_player_move;
states[player_states.plant] = scr_player_plant;

state = player_states.idle;
#endregion
timer = 30;

spd = 5;