//for(var i=0; i < gid_size; i++){
//	for(var j = 0; j < gid_size; j++){
//		if(ds_grid_get(grid, i, j) == true){
//			draw_circle(i*64, j*64 , 8, false);
//		}
//		draw_circle(i*64, j*64 , 8, true);
//	}
//}

/*
//draw sprites
for(var i=0; i < gid_size-1; i++){
	for(var j = 0; j < gid_size-1; j++){
		var p1 = ds_grid_get(grid, i, j);
		var p2 = ds_grid_get(grid, i+1, j);
		var p3 = ds_grid_get(grid, i+1, j+1);
		var p4 = ds_grid_get(grid, i, j+1);
		
		var index = (ceil(p1)*8) + (ceil(p2)*4) + (ceil(p3)*2) + ceil(p4);
		draw_sprite(spr_walls,index,i*64,j*64);
	}
}