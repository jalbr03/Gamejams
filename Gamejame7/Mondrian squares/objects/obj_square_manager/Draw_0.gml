if(start){
	if(mouse){
		var col = group_col;
		draw_rectangle_color(start_mouse[0],start_mouse[1],mouse_x,mouse_y,col,col,col,col,1);
		var width = mouse_x-start_mouse[0];
		var height = mouse_y - start_mouse[1];
		draw_sprite_ext(spr_low_opacity,0,start_mouse[0],start_mouse[1],width,height,0,col,0.25);
	}
}
//draw_self();
draw_groups();