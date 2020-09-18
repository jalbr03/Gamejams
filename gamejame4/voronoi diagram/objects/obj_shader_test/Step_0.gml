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
