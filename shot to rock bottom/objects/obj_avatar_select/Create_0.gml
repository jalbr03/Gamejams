imgspd = 1;
states_array[customstates.join]         = scr_customize_join;
states_array[customstates.player_done]  = scr_customize_player_done;
state = customstates.join;

//player done
room_select_player = noone;//this is the id for the object for the player to play with
data_sent = false;

size_off = 0;

draw_spr = true;