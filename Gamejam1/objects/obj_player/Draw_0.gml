draw_self();
var viewX = view_get_xport(view_camera[0]);
var viewY = view_get_yport(view_camera[0]);
var viewW = view_get_wport(view_camera[0]);
var viewH = view_get_hport(view_camera[0]);
var mid_screen = [viewX+viewW/2,viewY+viewH/2];

draw_set_font(fnt_player);
draw_set_halign(fa_left);
//score
draw_text(0,0,"score "+string(player_score));

//crop
if(current_carrying_plant != noone){
	draw_sprite(current_carrying_plant.sprite_index,current_carrying_plant.max_state,x,y-(sprite_height/2)-20);
}
//money
draw_text(viewX+viewW/2,viewY+10,"Gold "+string(money));

//hp
draw_healthbar(x+15,y-((sprite_height/2)+5),x-15,y-(sprite_height/2),hp*20,c_black,c_red,c_green,1,1,1);

//stats
draw_rectangle_color(viewX,(viewH/2)-line_spacing,viewX+100,(viewH/2)+line_spacing+20,c_black,c_black,c_black,c_black,0);
draw_text(viewX+10,(viewH/2)-line_spacing,"strength "+string(player_strength));
draw_text(viewX+10,(viewH/2),"speed "+string(player_speed));
draw_text(viewX+10,(viewH/2)+line_spacing,"money X "+string(player_money));

//quit
if(menu){
	draw_set_halign(fa_center);
	draw_rectangle_color(mid_screen[0]-menu_W,mid_screen[1]-menu_H,mid_screen[0]+menu_W,mid_screen[1]+menu_H,
		c_black,c_black,c_black,c_black,0);
	draw_text(mid_screen[0],mid_screen[1]-20,"Do you want to quit? (y/n) \n or restart? (R)");
}
