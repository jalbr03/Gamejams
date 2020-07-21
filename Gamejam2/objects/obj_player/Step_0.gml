var move_h = gamepad_axis_value(controller_number, gp_axislh);
var move_v = gamepad_axis_value(controller_number, gp_axislv);

var cursor_move_h = gamepad_axis_value(controller_number, gp_axisrh);
var cursor_move_v = gamepad_axis_value(controller_number, gp_axisrv);

var shoot = gamepad_button_check(controller_number, gp_shoulderrb)

x += move_h*spd;
y += move_v*spd;

if(cursor_move_h != 0 || cursor_move_v !=0){
	last_cursor_move_h = cursor_move_h;
	last_cursor_move_v = cursor_move_v;
}
target.x = x+last_cursor_move_h;
target.y = y+last_cursor_move_v;

image_angle = point_direction(x,y,target.x,target.y);

//walls
if(instance_exists(obj_free_wall)){
	print(instance_nearest(x,y,obj_free_wall).x);
}
while(place_meeting(x,y,obj_wall)){
	var freewall = instance_nearest(x,y,obj_free_wall);
	if(instance_exists(freewall)){
		print(freewall);
		x += (freewall.x-x)/64;
		y += (freewall.y-y)/64;
	}
}

//shooting
if(shoot && cool_down <= 0 && room != rm_join){
	var hugger = instance_create_layer(x,y,layer,obj_hugger);
	hugger.image_angle = image_angle;
	hugger.creator = id;
	cool_down = max_cool_down_time;
}
if(cool_down > 0){
	cool_down -= 1;
}

if(mouse_check_button_pressed(mb_left)){
	x = mouse_x;
	y = mouse_y;
}