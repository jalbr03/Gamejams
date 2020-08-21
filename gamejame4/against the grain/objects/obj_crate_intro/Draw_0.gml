draw_set_halign(fa_center);
draw_set_valign(fa_center);
if(intro_start){
	draw_sprite_ext(spr_power_glitch,0,x,y,xscale*6,yscale*6,0,c_white,1);
	draw_sprite_ext(sprite_index,0,x,y,xscale*6,yscale*6,0,c_white,white);
}
if(text_draw){
	draw_text_ext_transformed(x,y+256,"Created by Furball Games",10,1000,5,5,0);
}