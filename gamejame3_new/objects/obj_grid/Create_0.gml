gid_size = 23;
noise_init();
increment = 0.1;
zoff = random(100);
grid = ds_grid_create(gid_size,gid_size);
box_map = ds_map_create();
var yoff = 0;
for(var i=0; i < gid_size; i++){
	yoff += increment
	var xoff = 0;
	for(var j = 0; j < gid_size; j++){
		ds_grid_set(grid, j, i, noise(yoff,xoff,0.2));
		var wall = instance_create_layer(j*64,i*64,layer,obj_wall)
		ds_map_add(box_map,j+(i*gid_size),wall);
		xoff += increment;
	}
}
//ds_map_find