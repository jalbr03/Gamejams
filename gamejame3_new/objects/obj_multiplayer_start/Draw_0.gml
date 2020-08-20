if (self.show_debug_rectangle) {
	draw_rectangle(self.bbox_left, self.bbox_top, self.bbox_right, self.bbox_bottom, true);
}
if(global.players_ready){

	if(txt_fall > 2)txt_fall -= 0.1;
	if(txt_alpha < 1) txt_alpha += 0.01;
	draw_text_ext_transformed_color(room_width/2,room_height/2,time,1,64,txt_fall,txt_fall,0,
		c_green,c_gray,c_green,c_gray,txt_alpha);
	
}