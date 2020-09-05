if(window_get_fullscreen()){
	window_mouse_set(clamp(window_mouse_get_x(), 10, window_get_width()-10), clamp(window_mouse_get_y(), 10, window_get_height()-10));
}
x += (creator.x-x)/10
y += (creator.y-y)/10

animate += 0.005;

//var bg = layer_background_get_id("Background");
//layer_background_blend(bg,c_red)
var view_x = camera_get_view_x(view_camera[camera]);
var view_y = camera_get_view_y(view_camera[camera]);
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);
instance_activate_region(view_x-255,view_y-255,view_w+255,view_h+255,true);
