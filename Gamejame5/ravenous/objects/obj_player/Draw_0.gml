draw_self();
if(has_skin){
	draw_sprite_ext(spr_player_skin,0,x,y,1,1,-phy_rotation,c_white,1);
}
if(has_heart){
	draw_sprite_ext(spr_player_heart,animate_index%4,x,y,1,1,-phy_rotation,c_white,1);
}
if(has_eyes && !eyes_out){
	draw_sprite_ext(spr_player_eyes,animate_index%13,x,y,1,1,-hsv/10,c_white,1);
}
if(has_brain){
	draw_sprite_ext(spr_player_brain,animate_index%5,x,y,1,1,-phy_rotation,c_white,1);
}
if(has_kidney){
	draw_sprite_ext(spr_player_kidneys,animate_index%10,x,y,1,1,-phy_rotation,c_white,1);
}