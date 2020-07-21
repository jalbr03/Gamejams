image_alpha += (1-image_alpha)/increment;
image_xscale += (1-image_xscale)/increment;
image_yscale += (1-image_yscale)/increment;
increment -= (increment-1)/4;

if(image_alpha >= 1 && image_xscale <= 1 && image_yscale <=1){
	var player = instance_create_layer(x,y,layer,obj_player);
	player.controller_number = controller_number;
	player.image_blend = image_blend;
	instance_destroy(self);
	for(var i=0;i<irandom_range(10,15);i++){
		instance_create_layer(x,y,layer,obj_dust);
	}
}