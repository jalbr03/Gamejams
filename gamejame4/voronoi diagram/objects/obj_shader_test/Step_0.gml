for(var i=0;i<num_of_points;i++){
	points[i*2] += vels[i*2];
	points[i*2+1] += vels[i*2+1];
	
	if(abs(sprite_width/2 - points[i*2]) > sprite_width/2){
		vels[i*2]*=-1;
	}
	if(abs(sprite_height/2 - points[i*2+1]) > sprite_height/2){
		vels[i*2+1]*=-1;
	}
}
if(image_number > 0){
	var _uv = sprite_get_uvs(sprite_index,image_index);
	uv_x = _uv[0];
	uv_y = _uv[1];
	uv_w = 1/(_uv[2] - _uv[0]);
	uv_h = 1/(_uv[3] - _uv[1]);
}