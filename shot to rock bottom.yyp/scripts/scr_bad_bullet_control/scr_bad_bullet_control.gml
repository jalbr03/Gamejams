function scr_bad_bullet_control() {
	if(instance_exists(obj_target)){
		image_angle = point_direction(x,y,obj_target.x,obj_target.y);
	}
	x += lengthdir_x(6,image_angle);
	y += lengthdir_y(6,image_angle);
}
