for (var j = 0; j < height; j ++) {
    for (var i = 0; i < width; i ++) {
		if(mapData[# i, j] > 0){
			draw_sprite_ext(spr_block,0,i*cellSize,j*cellSize,cellSize,cellSize,0,c_white,mapData[# i, j]);
			//draw_rectangle_color(i*cellSize,j*cellSize,
			//					 i*cellSize+cellSize,j*cellSize+cellSize,col,col,col,col,0);
		}else{
			draw_rectangle(i*cellSize+1,j*cellSize+1,
						   i*cellSize+cellSize-1,j*cellSize+cellSize-1,1);
		}
    }
}
