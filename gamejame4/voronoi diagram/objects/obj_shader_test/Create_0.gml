show_debug_overlay(true);
shad_points = shader_get_uniform(sha_pixel_draw, "points");
numofpoints = shader_get_uniform(sha_pixel_draw, "num_of_points");

points = [];
vels = [];
num_of_points = fragment_amount;

for(var i=0;i<num_of_points;i++){
	points[i*2] = random_range(0,sprite_width);
	points[i*2+1] = random_range(0,sprite_height);
	vels[i*2] = random_range(-fragment_max_spd,fragment_max_spd);
	vels[i*2+1] = random_range(-fragment_max_spd,fragment_max_spd);
}
points = [0,0,sprite_width/2,sprite_height/2,sprite_width,sprite_height];