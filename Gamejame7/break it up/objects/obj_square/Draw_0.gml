draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_center);
for(var i=0;i<grid_width;i++){
	draw_line_color(x+i*(sprite_width/grid_width),y,x+i*(sprite_width/grid_width),y+sprite_height,c_black,c_black);	
}
for(var i=0;i<grid_height;i++){
	draw_line_color(x,y+i*(sprite_height/grid_height),x+sprite_width,y+i*(sprite_height/grid_height),c_black,c_black);
}
draw_text(x+(sprite_width/2),y+(sprite_height/2),grid_score);
draw_rectangle(x+1,y+1,x+sprite_width-1,y+sprite_height-1, 1);

