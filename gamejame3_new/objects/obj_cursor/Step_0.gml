#region button input
var leftIsPressed   = gamepad_button_check(self.controller_id, gp_padl)||
	gamepad_axis_value(controller_id,gp_axislh)<0;
var rightIsPressed  = gamepad_button_check(self.controller_id, gp_padr)||
	gamepad_axis_value(controller_id,gp_axislh)>0;
var upIsPressed     = gamepad_button_check(self.controller_id, gp_padu)||
	gamepad_axis_value(controller_id,gp_axislv)<0;
var downIsPressed   = gamepad_button_check(self.controller_id, gp_padd)||
	gamepad_axis_value(controller_id,gp_axislv)>0;
var select = gamepad_button_check(self.controller_id, gp_face1);
var erase = gamepad_button_check(self.controller_id, gp_face3);
imgmove = gamepad_button_check(self.controller_id, gp_face4);
#endregion
#region drawing
if(select && candraw == true){
	if(alarm[1] == -1) alarm[1] = 6;
#endregion
#region erasing
}else if(erase){
	var paintToErase = instance_nearest(x,y,obj_paint)
	if(place_meeting(x,y,paintToErase)) instance_destroy(paintToErase);
	
	isErasing = true;
}
if(!erase)     isErasing = false
#endregion
#region cursor input
var movex = ((rightIsPressed-gamepad_axis_value(controller_id,gp_axislh))-
	(leftIsPressed-gamepad_axis_value(controller_id,gp_axislh)))*0.1;
var movey = ((downIsPressed-gamepad_axis_value(controller_id,gp_axislv))-
	(upIsPressed-gamepad_axis_value(controller_id,gp_axislv)))*0.1;
cursor_accelerationx += movex;
cursor_accelerationy += movey;
#endregion
#region cursor acceleration
if(!select ^ !place_meeting(x,y,obj_avatar_select)||!select && !place_meeting(x,y,obj_avatar_select)){
	if(movex != 0){
		cursor_accelerationx += movex;
		cursor_accelerationx = clamp(cursor_accelerationx,-cursor_spd,cursor_spd);
	}else{
		if(abs(cursor_accelerationx) >= 0.3){
			cursor_accelerationx -= sign(cursor_accelerationx)*0.6;
		}else{
			cursor_accelerationx = 0;
		}
	}
	if(movey != 0){
		cursor_accelerationy += movey;
		cursor_accelerationy = clamp(cursor_accelerationy,-cursor_spd,cursor_spd);
	}else{
		if(abs(cursor_accelerationy) >= 0.3){
			cursor_accelerationy -= sign(cursor_accelerationy)*0.6;
		}else{
			cursor_accelerationy = 0;
		}
	}
}else{
	if(movex != 0){
		cursor_accelerationx += movex;
		cursor_accelerationx = clamp(cursor_accelerationx*0.8,-cursor_spd/2,cursor_spd/2);
	}else{
		if(abs(cursor_accelerationx) >= 0.6){
			cursor_accelerationx -= sign(cursor_accelerationx)*1.2;
		}else{
			cursor_accelerationx = 0;
		}
	}
	if(movey != 0){
		cursor_accelerationy += movey;
		cursor_accelerationy = clamp(cursor_accelerationy*0.8,-cursor_spd/2,cursor_spd/2);
	}else{
		if(abs(cursor_accelerationy) >= 0.6){
			cursor_accelerationy -= sign(cursor_accelerationy)*1.2;
		}else{
			cursor_accelerationy = 0;
		}
	}
}
#endregion
#region apply movement
if(!imgmove){
	x += cursor_accelerationx;
	y += cursor_accelerationy;
}
#endregion
