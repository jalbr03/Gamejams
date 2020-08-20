phy_fixed_rotation = true;
walls = ds_list_create();
wall_y = 0;
global.safe_to_save = false;
var last_body = noone;
for(var i=0;i<length;i++){
	var body = instance_create_layer(x-(i*sprite_width),y,layer,obj_body);
	if(last_body != noone){
		physics_joint_revolute_create(last_body,body,body.x,body.y,0,0,0,0,0,0,0);
		body.stay_with = last_body;
	}else{
		physics_joint_revolute_create(self,body,x,y,0,0,0,0,0,0,0);
		body.stay_with = id;
	}
	body.creator = id;
	last_body = body;
}
if(room == Rm_level){
	var cam = instance_create_layer(x,y,"camera",obj_camera);
	cam.creator = id;
}
tail_contact = ds_list_create();
num_of_contacts = 0;

time_tile_next_save = 240;
