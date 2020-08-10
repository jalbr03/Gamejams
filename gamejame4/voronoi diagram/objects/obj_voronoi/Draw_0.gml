for(var i=0;i<canvas_size/copy;i++){
	for(var j=0;j<canvas_size/copy;j++){
		var mindist = 1000;
		var point_pose = 0;
		for(var k=0;k<num_of_points;k++){
			var point_dist = point_distance(j,i,points[k][0],points[k][1]);
			if(point_dist < mindist){
				mindist = point_dist;
				point_pose = k;
			}
		}
		for(var k=0;k<copy;k++){
			for(var l=0;l<copy;l++){
				draw_point_color(i*copy+k,j*copy+l,make_color_hsv(255*(point_pose/num_of_points),255,255));
			}
		}
	}
}
