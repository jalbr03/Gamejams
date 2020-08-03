var move_h = sign(gamepad_axis_value(0,gp_axislh));
var move_v = sign(gamepad_axis_value(0,gp_axislv));

if((move_v != 0 ^ move_h != 0)){
		if(!was_input){
		var move_check = [abs(move_h)-abs(mv_dr[0]),abs(move_v)-abs(mv_dr[1])];
	

		if(move_check[0] != 0 && move_check[1] != 0){
			print(move_check);
			mv_dr = [move_h,move_v];
		}
		was_input = true;
	}
}else{
	was_input = false;
}

if(spd > 0){
	if(alarm[0] == -1) alarm[0] = fps/4;
}