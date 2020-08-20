var confetti = irandom(spawn_amount);
if(confetti == 0){
	instance_create_layer(x+irandom(room_width/10)*10,0,layer,obj_confetti);
}
if(over_flow){
	for(var i=0;i<5;i++){
		instance_create_layer(x+irandom(room_width/10)*10,0,layer,obj_confetti);
	}
}
