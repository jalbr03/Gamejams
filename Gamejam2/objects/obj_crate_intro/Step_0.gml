if(intro_start){
	xscale = power(2.7,-b*t)*cos(t - a) + 1;
	yscale = power(2.7,-b*t)*cos(t + a) + 1;
	t += 1;
	if(white > 0) white -= 0.04;
}