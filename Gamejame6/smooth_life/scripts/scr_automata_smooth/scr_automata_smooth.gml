// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function smooth_Generate(){
	for (var j = 0; j < height; j ++) {
	    for (var i = 0; i < width; i ++) {
	        if (i == 0 or i == width-1 or j == 0 or j == height-1) or ( irandom(100) < fillPercentage )  {
	            mapData[# i, j] = 1;
	        } else {
	            mapData[# i, j] = 0;
	        }
	    }
	}
}

function smooth_choose_to_die(){
	mapData2 = ds_grid_create(width, height);

	for (var j = 0; j < height; j++) {
	    for (var i = 0; i < width; i++) {
			neighbourWallTiles = smoothGetSurroundingWallCount (i, j, 1, 0);
			
			if (neighbourWallTiles < 0.1 || neighbourWallTiles > 0.9) {
				mapData2 [# i, j] = 0;
			} else if(neighbourWallTiles >= 0.1 && neighbourWallTiles <= 0.9){
				mapData2 [# i, j] = neighbourWallTiles;
				if(mapData2 [# i, j] < 0.1){
					mapData2 [# i, j] = 0;
				}
			}
	    }
	}
	//Now copy data over to the original map
	ds_grid_copy(mapData, mapData2);

	ds_grid_destroy(mapData2);
}

function smoothGetSurroundingWallCount(_x, _y, view_sizeL, view_sizeS){
	var wallCount = 0;
	var wall_value = 0;
	for (var neighbourY = _y - view_sizeL; neighbourY <= _y + view_sizeL; neighbourY++) {
		for (var neighbourX = _x - view_sizeL; neighbourX <= _x + view_sizeL; neighbourX++) {
		    if (neighbourX >= 0 and neighbourX < width and neighbourY >= 0 and neighbourY < height) { //Still in mapData bounds
		        if (view_sizeS < abs(neighbourX-_x) or view_sizeS < abs(neighbourY-_y)) {
		            wall_value += mapData [# neighbourX, neighbourY];
					wallCount += 1;
		        }
		    }
		}
	}
	if(wall_value > 0){
		//print("wall value "+string(wall_value));
		//print("wall count "+string(wallCount));
		wall_value = wall_value/wallCount;
	}
	return wall_value;
}
/*
function Apply(){
	for(var j=0; j<height; j++) {
	    for(var i=0; i<width; i++) {
	        if (mapData[# i, j]) {
	            //Is a wall
				
	            var tile = tile_add(bckTile,0,0,1,1,i*cellSize,j*cellSize,0);
	            tile_set_scale(tile, cellSize, cellSize);
	        } else {
	            //Empty
	            var tile = tile_add(bckTile,2,0,1,1,i*cellSize,j*cellSize,0);
	            tile_set_scale(tile, cellSize, cellSize);
	        }
	    }
	}
}


