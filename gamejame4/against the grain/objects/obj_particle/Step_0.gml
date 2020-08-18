if(life_time > 0){
	image_alpha += 0.1
	life_time -= 1;
}else{
	image_alpha -= 0.05;
	if(image_alpha <= 0){
		instance_destroy(self);
	}
}
x += 1;
y -= cos(animate)+random_range(0,0.5);
animate += 0.1;
