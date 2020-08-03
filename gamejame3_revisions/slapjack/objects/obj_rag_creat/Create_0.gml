var body_w = 32
var body_h = 64;
var joint_limit = 154;
var enable_limit = true;
//var head_s = 64;

var head = instance_create_layer(x,y,layer,Obj_head);
var body_u = instance_create_layer(x,y+body_h/2,layer,Obj_body);
physics_joint_revolute_create(head, body_u,body_u.x,body_u.y,-joint_limit,joint_limit,enable_limit,0,0,0,0);

var body_l = instance_create_layer(x,y+body_h*1.5,layer,Obj_body);
physics_joint_revolute_create(body_l, body_u,body_l.x,body_l.y,-joint_limit,joint_limit,enable_limit,0,0,0,0);

var left_l_u = instance_create_layer(x-body_w/2,y+body_h*2.5,layer,Obj_body);
physics_joint_revolute_create(body_l, left_l_u,left_l_u.x,left_l_u.y,-joint_limit,joint_limit,enable_limit,0,0,0,0);

var left_l_l = instance_create_layer(x-body_w/2,y+body_h*3.5,layer,Obj_body);
physics_joint_revolute_create(left_l_u, left_l_l,left_l_l.x,left_l_l.y,-joint_limit,joint_limit,enable_limit,0,0,0,0);

var right_l_u = instance_create_layer(x+body_w/2,y+body_h*2.5,layer,Obj_body);
physics_joint_revolute_create(body_l, right_l_u,right_l_u.x,right_l_u.y,-joint_limit,joint_limit,enable_limit,0,0,0,0);

var right_l_l = instance_create_layer(x+body_w/2,y+body_h*3.5,layer,Obj_body);
physics_joint_revolute_create(right_l_u, right_l_l,right_l_l.x,right_l_l.y,-joint_limit,joint_limit,enable_limit,0,0,0,0);

var left_a_u = instance_create_layer(x-body_w,y+body_h/2,layer,Obj_body);
physics_joint_revolute_create(body_u, left_a_u,left_a_u.x,left_a_u.y,-joint_limit,joint_limit,enable_limit,0,0,0,0);

var left_a_l = instance_create_layer(x-body_w,y+body_h*1.5,layer,Obj_body);
physics_joint_revolute_create(left_a_u, left_a_l,left_a_l.x,left_a_l.y,-joint_limit,joint_limit,enable_limit,0,0,0,0);

var right_a_u = instance_create_layer(x+body_w,y+body_h/2,layer,Obj_body);
physics_joint_revolute_create(body_u, right_a_u,right_a_u.x,right_a_u.y,-joint_limit,joint_limit,enable_limit,0,0,0,0);

var right_a_l = instance_create_layer(x+body_w,y+body_h*1.5,layer,Obj_body);
physics_joint_revolute_create(right_a_u, right_a_l,right_a_l.x,right_a_l.y,-joint_limit,joint_limit,enable_limit,0,0,0,0);