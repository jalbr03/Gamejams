var view_x = camera_get_view_x(view_camera[camera]);
var view_y = camera_get_view_y(view_camera[camera]);
var pan_x = view_x/room_width
var pan_y = view_y/room_height/3;

draw_sprite_ext(spr_bg3, 0, view_x-(pan_x*bg_left_overx), view_y-bg_offset+(pan_y*bg_left_overy),0.5,0.5,0,c_white,1);

