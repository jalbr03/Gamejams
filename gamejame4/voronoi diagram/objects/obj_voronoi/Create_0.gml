points = [];
num_of_points = 10;
canvas_size = 700;
cell_size = 10;
grid = ds_grid_create(canvas_size/cell_size,canvas_size/cell_size);
for(var i=0;i<num_of_points;i++){
	points[i] = [random(canvas_size/copy),random(canvas_size/copy)];
}
//time = 0;