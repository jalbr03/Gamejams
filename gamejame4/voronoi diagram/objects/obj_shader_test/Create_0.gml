sprite_index = image;
show_debug_overlay(true);
shad_points = shader_get_uniform(sha_voronoi, "points");
numofpoints = shader_get_uniform(sha_voronoi, "num_of_points");
uvs = shader_get_uniform(sha_voronoi,"uvs");
var _uv = sprite_get_uvs(sprite_index,0);
uv_x = _uv[0];
uv_y = _uv[1];
uv_w = 1/(_uv[2] - _uv[0]);
uv_h = 1/(_uv[3] - _uv[1]);


points = [];
vels = [];
num_of_points = fragment_amount;

for(var i=0;i<num_of_points;i++){
	points[i*2] = random_range(0,sprite_width);
	points[i*2+1] = random_range(0,sprite_height);
	vels[i*2] = random_range(-fragment_max_spd,fragment_max_spd);
	vels[i*2+1] = random_range(-fragment_max_spd,fragment_max_spd);
}