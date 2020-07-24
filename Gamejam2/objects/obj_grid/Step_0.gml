var xoff = 0;
for(var i=0; i < gid_size; i++){
	xoff += increment
	var yoff = 0;
	for(var j = 0; j < gid_size; j++){
		ds_grid_set(grid, i, j, noise(xoff,yoff,zoff));
		yoff += increment
	}
}
zoff += 0.001;
//if(mouse_check_button(mb_right)){
//	zoff += 0.005;
//}

for(var i=0; i < gid_size-1; i++){
	for(var j = 0; j < gid_size-1; j++){
		var p1 = ds_grid_get(grid, i, j);
		var p2 = ds_grid_get(grid, i+1, j);
		var p3 = ds_grid_get(grid, i+1, j+1);
		var p4 = ds_grid_get(grid, i, j+1);
		
		var index = (ceil(p1)*8) + (ceil(p2)*4) + (ceil(p3)*2) + ceil(p4);
		var wall = ds_map_find_value(box_map,i+(j*gid_size));
		wall.image_index = index;
	}
}