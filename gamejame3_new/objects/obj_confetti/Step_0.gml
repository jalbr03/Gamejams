x = xstart+cos(xoff)*20;
xoff += 0.1;
y += spd;
if(y > room_height){
	instance_destroy(self);
}