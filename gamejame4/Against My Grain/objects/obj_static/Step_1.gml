if(global.pause){
	physics_pause_enable(true)
}else{
	physics_pause_enable(false);
}

var camera_w = view_get_wport(0);
//if (distance_to_object(obj_head) > camera_w){
//	instance_deactivate_object(self);
//}
