//ds_list_add(tail_pose,[x,y]);
//if(ds_list_size(tail_pose) > tail_size){
//	ds_list_delete(tail_pose,0);
//}

var tail1 = instance_create_layer(x,y,layer,obj_tail);
ds_list_add(tail_objs,tail1);
if(ds_list_size(tail_objs) > tail_size){
	var tail2 = ds_list_find_value(tail_objs,0);
	instance_destroy(tail2);
	ds_list_delete(tail_objs,0);
}

if(mv_dr[0] != 0){
	if(mv_dr[0]>0){
		image_angle = 0;
	}else{
		image_angle = 180;
	}
}else if(mv_dr[1] != 0){
	image_angle = -mv_dr[1]*90;
}
x += lengthdir_x(sprite_width,image_angle);
y += lengthdir_y(sprite_width,image_angle);

