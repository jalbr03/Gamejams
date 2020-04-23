draw_self();
var viewX = view_get_xport(view_camera[0]);
var viewY = view_get_yport(view_camera[0]);
var viewW = view_get_wport(view_camera[0]);
var viewH = view_get_hport(view_camera[0]);

draw_set_font(fnt_player);
draw_set_halign(fa_left);
//crop
if(current_carrying_plant != noone){
	draw_sprite(current_carrying_plant.sprite_index,current_carrying_plant.max_state,x,y-(sprite_height/2)-20);
}
//money
draw_text(viewX+viewW/2,viewY+10,money);

//hp
draw_healthbar(x+15,y-((sprite_height/2)+5),x-15,y-(sprite_height/2),hp*20,c_black,c_red,c_green,1,1,1);

//stats
draw_rectangle_color(viewX,(viewH/2)-line_spacing,viewX+100,(viewH/2)+line_spacing+20,c_black,c_black,c_black,c_black,0);
draw_text(viewX+10,(viewH/2)-line_spacing,"strength "+string(player_strength));
draw_text(viewX+10,(viewH/2),"speed "+string(player_speed));
draw_text(viewX+10,(viewH/2)+line_spacing,"money X "+string(player_money));