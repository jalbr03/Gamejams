print(power(2.7,-b*t)*cos(t - a)*10);
if(shake){
	shaking = true;
	t = 0;
	shake = false;
}
if(shaking){
	x = power(2.7,-b*t)*cos(t - a)*10 + mid_roomx;
	t += 1;
	if(t > 120){
		shaking = false;
		t = 0;
	}
}