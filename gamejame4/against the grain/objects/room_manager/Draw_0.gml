if(room == Rm_loading){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);

	draw_text(room_width/2,room_height/2-32,"TIP:");
	draw_text(room_width/2,room_height/2,tips[tip_num]);
}
