var rain = irandom(10);
if(rain == 0){
	instance_create_layer(x+irandom(room_width/10)*10,y+random(room_height/2),layer,obj_rain);
}