draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if(!add){
	draw_text_color(x,y,"- "+str(number),c_white,c_white,c_white,c_white,image_alpha);
}else{
	draw_text_color(x,y,"+ "+str(number),c_white,c_white,c_white,c_white,image_alpha);
}