if(!grow){
	animate += 0.1;
	var size = (cos(animate)+amount-1)/amount;
	image_xscale = size;
	image_yscale = size;
}else{
	if(image_xscale < obj_camera.new_camera_width/8){
		image_xscale += 1;
		image_yscale += 1;
	}else{
		obj_camera.shrink = true;
	}
}
image_angle += 1;