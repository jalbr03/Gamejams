function scr_player_3() {
	static timer1 = 0;
	static timer2 = 0;
	static timer3 = 0;
	static timer4 = 0;
	
	var ability1 = gamepad_button_check_pressed(controller_number, gp_face1);
	var ability2 = gamepad_button_check_pressed(controller_number, gp_face2);
	var ability3 = gamepad_button_check_pressed(controller_number, gp_face3);
	var ability4 = gamepad_button_check_pressed(controller_number, gp_face4);
	var ability_set = groups[current_group];
	
	if(ability1 && timer1 <= 0){
		script_execute(ability_set[0]);
		timer1 = fps*3;
	}else if(ability2 && timer1 <= 0){
		script_execute(ability_set[1]);
		timer1 = fps*3;
	}else if(ability3 && timer1 <= 0){
		script_execute(ability_set[2]);
		timer1 = fps*3;
	}else if(ability4 && timer1 <= 0){
		script_execute(ability_set[3]);
		timer1 = fps*3;
	}
	print(timer1);
	if(timer1 > 0) timer1 -= 1;
	if(timer2 > 0) timer2 -= 1;
	if(timer3 > 0) timer3 -= 1;
	if(timer4 > 0) timer4 -= 1;



}
