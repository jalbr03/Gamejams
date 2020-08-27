x = creator.x;

y = creator.y-offset - (place*100);

if(abs(mouse_x - x)<sprite_width/2 && abs(mouse_y - y)<sprite_height/2){
	creator.selection = number;
	close_to_mouse = true;
}else{
	close_to_mouse = false;
}
offset -= offset/10;
menu_options = creator.menu_options;
opt_options = creator.opt_options;
