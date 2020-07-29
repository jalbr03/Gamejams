if(state != -1){
	script_execute(states_array[state]);
}
xscale = power(2.7,-b*t)*cos(t - a) + 1;
yscale = power(2.7,-b*t)*cos(t + a) + 1;
if(cool_down){
	t = 0;
	animate = 0;
}else{
	t += 1;
	animate += 0.05;
}
