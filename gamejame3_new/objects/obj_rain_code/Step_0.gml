var rain = irandom(10);
if(rain == 0){
	instance_create_layer(x+irandom(room_width/10)*10,y+irandom(room_height/10)*10,layer,obj_rain);
}