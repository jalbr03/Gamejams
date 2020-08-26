stateMachine.step();
if(place_meeting(x,y,obj_player)){
	part_system_auto(0.1,-0.1,1,3,1,3,random(359),c_red,100,100,100);
	for(var i=0;i<extract_amount;i++){
		var organ = instance_create_layer(x,y,layer,organs[random(num_of_organs)]);
		organ.num += i;
	}
	instance_destroy(self);
}
