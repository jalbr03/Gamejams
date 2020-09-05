event_inherited();
phy_fixed_rotation = true;
walls = ds_list_create();
wall_y = 0;
screen_width = view_get_wport(0)/2;
screen_height = view_get_hport(0)/2;
stick_tongue_out = true;
animate = 0;
offset = 0;
body_list = ds_list_create();
var last_body = noone;
var poses = get_player_pose();
//physics_pause_enable(true);
if(in_sellect){
	for(var i=0;i<length;i++){
		var body = instance_create_layer(x-(i*sprite_width),y,layer,obj_body);
		ds_list_add(body_list,body);
		if(last_body != noone){
			physics_joint_revolute_create(last_body,body,body.x,body.y,0,0,0,0,0,0,0);
			body.stay_with = last_body;
		}else{
			physics_joint_revolute_create(self,body,x,y,0,0,0,0,0,0,0);
			body.stay_with = id;
		}
		body.creator = id;
		last_body = body;
		body.color_num = i%body.num_of_colors;
	}
}else if(poses == -1){
	for(var i=0;i<length;i++){
		var body = instance_create_layer(x-(i*sprite_width),y,layer,obj_body);
		ds_list_add(body_list,body);
		if(last_body != noone){
			physics_joint_revolute_create(last_body,body,body.x,body.y,0,0,0,0,0,0,0);
			body.stay_with = last_body;
		}else{
			physics_joint_revolute_create(self,body,x,y,0,0,0,0,0,0,0);
			body.stay_with = id;
		}
		body.creator = id;
		last_body = body;
		body.color_num = i%body.num_of_colors;
	}
}else if(!in_sellect){
	//phy_position_x = ds_list_find_value(poses,0);
	//phy_position_y = ds_list_find_value(poses,1);
	//phy_rotation = ds_list_find_value(poses,2);
	for(var i=0;i<length;i++){
		var xx = ds_list_find_value(poses,(i+1)*3)
		var yy = ds_list_find_value(poses,(i+1)*3+1)
		var rot = ds_list_find_value(poses,(i+1)*3+2)
		var body = instance_create_layer(xx,yy,layer,obj_body);
		body.phy_rotation = rot;
		ds_list_add(body_list,body);
		if(last_body != noone){
			physics_joint_revolute_create(last_body,body,body.x,body.y,0,0,0,0,0,0,0);
			body.stay_with = last_body;
		}else{
			physics_joint_revolute_create(self,body,x,y,0,0,0,0,0,0,0);
			body.stay_with = id;
		}
		body.creator = id;
		last_body = body;
		body.color_num = i%body.num_of_colors;
	}
}
if(room == Rm_level){
	var cam = instance_create_layer(x,y,"camera",obj_camera);
	cam.creator = id;
}
tail_contact = ds_list_create();
num_of_contacts = 0;

time_tile_next_save = 240;

gamepad_set_axis_deadzone(0,0.2);

v_dir = 0;
h_dir = 0;

alarm[0] = 10;

