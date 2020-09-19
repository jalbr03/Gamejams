for (var j = 0; j < height; j ++) {
    for (var i = 0; i < width; i ++) {
		if(mapData[# i, j] > 0){
			draw_rectangle(i*cellSize,j*cellSize,
						   i*cellSize+cellSize,j*cellSize+cellSize,0);
		}else{
			draw_rectangle(i*cellSize+1,j*cellSize+1,
						   i*cellSize+cellSize-1,j*cellSize+cellSize-1,1);
		}
    }
}
