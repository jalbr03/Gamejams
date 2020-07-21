var move_h = gamepad_axis_value(controller_number, gp_axislh);
var move_v = gamepad_axis_value(controller_number, gp_axislv);
var drop_down = gamepad_button_check_pressed(controller_number,gp_face1);

x += move_h*spd;
y += move_v*spd;

if(drop_down){
	var player = instance_create_layer(x,y,layer,obj_player_droping);
	player.controller_number = controller_number;
	player.image_blend = image_blend;
	instance_destroy(self);
}