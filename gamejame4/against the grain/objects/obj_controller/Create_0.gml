surf = surface_create(room_width,room_height);
for(var i=0;i<blobs;i++){
	instance_create_layer(random(room_width),random(room_height),layer,obj_ball);
}