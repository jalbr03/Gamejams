var click = mouse_check_button_pressed(mb_any);
image_xscale = start_xscale+cos(animate);
image_yscale = start_yscale+cos(animate);
image_angle = sin(animate)*5;
animate += animate_vel;
animate_vel += 0.00001;

if(click && clickable){
	obj_fade.fade = true;
	obj_fade.fade_dir = 1;
	obj_fade.room_to_goto = rm_splash;
	clickable = false;
}
