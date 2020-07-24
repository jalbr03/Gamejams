image_xscale += grow_dir*0.03;
image_yscale += grow_dir*0.03;
if(image_xscale >= 3){
	grow_dir = grow_dir*-1;
	var hugger = collision_circle(x,y,sprite_width/2,obj_hugger,0,1);
	instance_destroy(hugger);
}
if(image_xscale <= 0){
	creator.win = true;
	instance_destroy();
}
depth = -2;