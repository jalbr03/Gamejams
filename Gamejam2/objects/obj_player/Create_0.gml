target = instance_create_layer(x,y,layer,obj_target);
player_id = noone;
controller_number = 0;
last_cursor_move_h = 0;
last_cursor_move_v = 0;
spd = 5;
//walls = ds_list_create();
max_cool_down_time = 60;
cool_down = 0;
alarm[0] = 1;

win = false;

//depth = -2