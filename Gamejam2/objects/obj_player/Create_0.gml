target = instance_create_layer(x,y,layer,obj_target);
player_id = noone;
controller_number = 0;
last_cursor_move_h = 0;
last_cursor_move_v = 0;
max_spd = 5;
slow_spd = 2;
spd = 5;
track_sound = audio_play_sound(snd_tracks,1,1);
//walls = ds_list_create();
max_cool_down_time = 60;
cool_down = 0;
alarm[0] = 1;
current_powerup = noone;

win = false;

//depth = -2