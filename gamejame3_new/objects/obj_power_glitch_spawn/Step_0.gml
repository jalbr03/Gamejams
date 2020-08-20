xscale = power(2.7,-b*t)*cos(t - a) + 1;
yscale = power(2.7,-b*t)*cos(t + a) + 1;
t += 1;
if(white > 0) white -= 0.04;
if(t > 30){
	instance_create_layer(x,y,layer,obj_power_glitch);
	instance_destroy(self);
}