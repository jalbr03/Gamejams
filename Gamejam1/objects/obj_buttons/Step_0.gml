if(abs(mouse_x-x) < sprite_width/2 && abs(mouse_y-y) < sprite_height/2){
	is_hovering = true;
	current_color = h_color;
}else{
	is_hovering = false;
	current_color = b_color;
}