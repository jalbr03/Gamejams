enum bad_state{
	fallow,
	straight,
	curv,
	center,
	control
}
states_array[bad_state.fallow]   = scr_bad_bullet_fallow;
states_array[bad_state.straight] = scr_bad_bullet_straight;
states_array[bad_state.curv] = scr_bad_bullet_curv;
states_array[bad_state.center] = scr_bad_bullet_center;
states_array[bad_state.control] = scr_bad_bullet_control;
state = 0;
controller_number = -1;
spd = 3;
var point_to_center = point_direction(x,y,room_width/2,room_height/2);
look_x = lengthdir_x(3,point_to_center);
look_y = lengthdir_y(3,point_to_center);
direction_area = 5;
image_speed = 0;

t = 0;
a = 1;
b = 0.2;

alarm[0] = 1;