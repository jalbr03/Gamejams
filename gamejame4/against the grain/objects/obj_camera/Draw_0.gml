//var vi = view_camera[0];
//var vx = camera_get_view_x(vi);
//var vy = camera_get_view_y(vi);
//var vw = camera_get_view_width(vi);
//var vh = camera_get_view_height(vi);
//print(vx);
var col1 = merge_color(c_red,red2,max(cos(animate),0));
var col2 = merge_color(blue1,blue2,max(cos(animate),0));
draw_rectangle_color(0,3000,room_width,room_height,col1,col1,col2,col2,0);