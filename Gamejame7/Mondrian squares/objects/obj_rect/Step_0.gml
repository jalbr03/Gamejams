x -= spd;
y += spd;

if(x < 0){
	x = room_width+64;
	y = -64;
	image_yscale = random_range(0.5,1);
	spd = random_range(min_spd,max_spd);
}