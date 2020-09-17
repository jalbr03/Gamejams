if((keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) && !cool_down){
	current_frame += 1;
	cool_down = true;
	alarm[0] = 30;
	letters = ""
	current_letter = 0;
}
try{
	image_index = animate_sciens[current_scien][current_frame];
}catch(error){
	obj_camera.shrink = true;
}