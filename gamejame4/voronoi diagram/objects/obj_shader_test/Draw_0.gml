//draw
var temp_points = [];
for(var i=0;i<num_of_points;i++){
	temp_points[i*2] = (points[i*2]/sprite_width);
	temp_points[i*2+1] = (points[i*2+1]/sprite_height);
}
shader_set(sha_pixel_draw);
shader_set_uniform_f_array(shad_points, temp_points);
shader_set_uniform_i(numofpoints, num_of_points);
draw_self();
shader_reset();
for(var i=0;i<num_of_points;i++){
	draw_circle_color(points[i*2]+x,points[i*2+1]+y,5,c_black,c_black,0);
}

