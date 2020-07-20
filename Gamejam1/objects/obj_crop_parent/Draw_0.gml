draw_set_halign(fa_left);
if(type == "buyable"){
	draw_sprite(sprite_index,max_state,x,y);
	draw_text(x,y,"cost "+string(cost));
}else{
	draw_sprite(sprite_index,state,x,y);
}