//tail_pose = ds_list_create();
tail_objs = ds_list_create();
tail_size = 20;
alarm[0] = 120;

gamepad_set_axis_deadzone(0, 0.4);
was_input = false;
mv_dr = [0,-1];
spd = 1;

image_speed = 0;