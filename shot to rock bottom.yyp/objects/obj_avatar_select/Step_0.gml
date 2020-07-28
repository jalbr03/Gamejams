#region image animation
if (self.controller_id >= 0) {
	draw_spr = false;
	image_speed = 0;
	if(gamepad_get_axis_deadzone(controller_id)<0.4) gamepad_set_axis_deadzone(controller_id,0.4);
	if(size_off != 0) size_off = 0;
}else{
	draw_spr = true;
	self.sprite_index = spr_avatar;
	if(self.image_index = self.image_number-1) self.image_speed = -self.imgspd;
	if(self.image_index = 0) self.image_speed = self.imgspd;
	size_off += 0.03;
}
#endregion
script_execute(states_array[state]);