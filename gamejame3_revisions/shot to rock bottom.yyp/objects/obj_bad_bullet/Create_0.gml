states_array[bad_state.fallow]   = scr_bad_bullet_fallow;
states_array[bad_state.straight] = scr_bad_bullet_straight;
states_array[bad_state.curv] = scr_bad_bullet_curv;
states_array[bad_state.center_laser] = scr_bad_bullet_center_laser;
states_array[bad_state.target_laser] = scr_bad_bullet_target_laser;
state = -1;
controller_number = -1;
spd = 3;
direction_area = 5;
target_x = 0;
target_y = 0;
image_speed = 0;

t = 0;
a = 1;
b = 0.2;

alarm[0] = 1;