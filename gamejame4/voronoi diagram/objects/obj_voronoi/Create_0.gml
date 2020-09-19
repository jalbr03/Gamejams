points = [];
vel = [];
num_of_points = 10;
canvas_size = 700;
cell_size = 10;
size = canvas_size/copy;
for(var i=0;i<num_of_points;i++){
	points[i] = [random(canvas_size/copy),random(canvas_size/copy)];
	vel[i] = [random_range(-1,1),random_range(-1,1)];
}
//time = 0;

surface = surface_create(room_width,room_height);

show_debug_overlay(true);