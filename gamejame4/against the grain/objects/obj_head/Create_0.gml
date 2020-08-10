var last_body = noone;
for(var i=0;i<length;i++){
	var body = instance_create_layer(x-(i*sprite_width),y,layer,obj_body);
	if(last_body != noone){
		physics_joint_revolute_create(last_body,body,body.x,body.y,0,0,0,0,0,0,0);
	}else{
		physics_joint_revolute_create(self,body,x,y,0,0,0,0,0,0,0);
		body.stay_with = true;
	}
	body.creator = id;
	last_body = body;
}
var cam = instance_create_layer(x,y,layer,obj_camera);
cam.creator = id;
tail_contact = ds_list_create();
num_of_contacts = 0;