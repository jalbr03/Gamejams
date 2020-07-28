enum good_bullet_state{
	straight,
	fallow,
	crazy
}
states_array[good_bullet_state.fallow]   = scr_good_bullet_fallow;
states_array[good_bullet_state.straight] = scr_good_bullet_straight;
states_array[good_bullet_state.crazy] = scr_good_bullet_crazy;
state = 0;
spd = 8;
image_speed = 0;
alarm[0] = 1;