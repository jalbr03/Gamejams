draw_set_halign(fa_center);
draw_set_valign(fa_center);
for(var i=0;i<array_length(credits);i++){
	draw_text(room_width/2,room_height+i*50+offset,credits[i]);
}
offset--;