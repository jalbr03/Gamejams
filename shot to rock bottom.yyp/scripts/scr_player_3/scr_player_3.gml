function scr_player_3() {
	static timer1 = 0;
	static timer2 = 0;
	static timer3 = 0;
	static timer4 = 0;
	
	
	var ability1 = gamepad_button_check_pressed(controller_number, gp_face1);
	var ability2 = gamepad_button_check_pressed(controller_number, gp_face3);
	var ability3 = gamepad_button_check_pressed(controller_number, gp_shoulderlb);
	var ability4 = gamepad_button_check_pressed(controller_number, gp_shoulderrb);
	var ability_set = groups[current_group];
	
	if(ability_state == -1){
		if(ability1 && timer1 <= 0){
			ability_state = ability_set[0]
			timer1 = fps;
		}else if(ability2 && timer1 <= 0){
			ability_state = ability_set[1]
			timer1 = fps*2;
		}else if(ability3 && timer1 <= 0){
			ability_state = ability_set[2]
			timer1 = fps*3;
		}else if(ability4 && timer1 <= 0){
			ability_state = ability_set[3]
			timer1 = fps*3;
		}
	}
	print("ability "+string(ability_state));
	print("timer1 "+string(timer1));
	if(ability_state != -1){
		script_execute(ability_array[ability_state]);
	}
	
	//if(ability1 && timer1 <= 0){
	//	script_execute(ability_set[0]);
	//	timer1 = fps*3;
	//}else if(ability2 && timer1 <= 0){
	//	script_execute(ability_set[1]);
	//	timer1 = fps*3;
	//}else if(ability3 && timer1 <= 0){
	//	script_execute(ability_set[2]);
	//	timer1 = fps*3;
	//}else if(ability4 && timer1 <= 0){
	//	script_execute(ability_set[3]);
	//	timer1 = fps*3;
	//}
	if(timer1 > 0) timer1 -= 1;
	if(timer2 > 0) timer2 -= 1;
	if(timer3 > 0) timer3 -= 1;
	if(timer4 > 0) timer4 -= 1;



}
