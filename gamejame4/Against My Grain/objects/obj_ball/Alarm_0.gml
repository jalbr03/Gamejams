if(center){
	global.orbit = new orbital(x,y,0);
	for(var i=0;i<num_of_orbitals;i++){
		var ball = instance_create_layer(x,y,layer,obj_ball);
		ball.orbital = true;
		ball.creator = self;
		ball.number = i;
		ball.life_span = life_span;
	}
}