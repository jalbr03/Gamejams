window_mouse_set(clamp(window_mouse_get_x(), 10, window_get_width()-10), clamp(window_mouse_get_y(), 10, window_get_height()-10));

x += (creator.x-x)/10
y += (creator.y-y)/10

animate += 0.005;

//var bg = layer_background_get_id("Background");
//layer_background_blend(bg,c_red)
