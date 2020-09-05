var view_x = camera_get_view_x(view_camera[camera]);
var view_y = camera_get_view_y(view_camera[camera]);
var pan_x = view_x/room_width
var pan_y = view_y/room_height/3;

var gb_dist_1 = (y-(room_height/3)*2);
var gb_dist_2 = (y-(room_height/3));
var gb_dist_3 = (y);
if(gb_dist_3 > 0){
	bg_alphas[2] += (1-bg_alphas[2])/bg_transition_spd;
}else{
	bg_alphas[2] -= (bg_alphas[2])/bg_transition_spd;
}

if(gb_dist_2 > 0){
	bg_alphas[1] += (1-bg_alphas[1])/bg_transition_spd;
}else{
	bg_alphas[1] -= (bg_alphas[1])/bg_transition_spd;
}

if(gb_dist_1 > 0){
	bg_alphas[0] += (1-bg_alphas[0])/bg_transition_spd;
}else{
	bg_alphas[0] -= (bg_alphas[0])/bg_transition_spd;
}

draw_sprite_ext(backgrounds[2], 0, view_x-(pan_x*bg_left_overx), view_y-bg_offset+(pan_y*bg_left_overy),0.5,0.5,0,c_white,bg_alphas[2]);
draw_sprite_ext(backgrounds[1], 0, view_x-(pan_x*bg_left_overx), view_y-bg_offset+(pan_y*bg_left_overy),0.5,0.5,0,c_white,bg_alphas[1]);
draw_sprite_ext(backgrounds[0], 0, view_x-(pan_x*bg_left_overx), view_y-bg_offset+(pan_y*bg_left_overy),0.5,0.5,0,c_white,bg_alphas[0]);