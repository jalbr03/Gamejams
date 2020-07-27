depth = -1;
brush_pose = ds_map_create();
paint_amount = 0;
controller_id = -1;
creator = noone
candraw = false;
isErasing = false;
cursor_spd = 5;
cursor_accelerationx = 0;
cursor_accelerationy = 0;
alarm[0] = 60;

if(instance_exists(obj_paint)){
	depth = -2-(instance_number(obj_paint))*0.1;
}