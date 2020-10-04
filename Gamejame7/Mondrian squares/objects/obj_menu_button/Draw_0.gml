draw_self();
if(menu = 0){
	if(!close_to_mouse){
		draw_text_color(x,y,global.menu_options[number],c_blue,c_blue,c_blue,c_blue,1);
	}else{
		draw_text_color(x,y,global.menu_options[number],c_gray,c_gray,c_gray,c_gray,1);
	}
}
