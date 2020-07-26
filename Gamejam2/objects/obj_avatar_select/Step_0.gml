#region image animation
if (self.controller_id >= 0) {
	self.sprite_index = spr_tractor_select;
	image_speed = 0;
	image_index = floor(image_index);
	if(gamepad_get_axis_deadzone(controller_id)<0.4) gamepad_set_axis_deadzone(controller_id,0.4);
	if(size_off != 0)size_off = 0;
}else{
	self.sprite_index = spr_avatar;
	if(self.image_index = self.image_number-1) self.image_speed = -self.imgspd;
	if(self.image_index = 0) self.image_speed = self.imgspd;
	size_off += 0.03;
}
#endregion
script_execute(states_array[state]);

print(cos(size_off)+start_size)