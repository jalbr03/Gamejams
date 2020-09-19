for(var i=0;i<num_of_points;i++){
	points[i][0] += vel[i][0];
	points[i][1] += vel[i][1];

	if(abs(points[i][0]-size/2) > size/2){
		vel[i][0] *= -1;
	}
	if(abs(points[i][1]-size/2) > size/2){
		vel[i][1] *= -1;
	}
}