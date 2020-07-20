gid_size = 20;
noise_init();
increment = 0.1;
zoff = random(100);
grid = ds_grid_create(20,20);
box_map = ds_map_create();
var xoff = 0;
for(var i=0; i < gid_size; i++){
	xoff += increment
	var yoff = 0;
	for(var j = 0; j < gid_size; j++){
		ds_grid_set(grid, i, j, noise(xoff,yoff,0.2));
		var wall = instance_create_layer(i*64,j*64,layer,obj_wall)
		print([i,j]);
		ds_map_add(box_map,i+(j*gid_size),wall);
		yoff += increment;
	}
}
//ds_map_find