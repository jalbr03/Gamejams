var confetti = irandom(10);
if(confetti == 0){
	instance_create_layer(x+irandom(room_width/10)*10,0,layer,obj_confetti);
}
