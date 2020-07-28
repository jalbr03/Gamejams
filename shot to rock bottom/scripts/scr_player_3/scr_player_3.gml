var ability1 = gamepad_button_check_pressed(controller_number, gp_face1);
var ability2 = gamepad_button_check_pressed(controller_number, gp_face2);
var ability3 = gamepad_button_check_pressed(controller_number, gp_face3);
var ability4 = gamepad_button_check_pressed(controller_number, gp_face4);
var ability_set = groups[current_group];
if(timer <= 0){
	if(ability1){
		script_execute(ability_set[0]);
		timer = fps;
	}else if(ability2){
		script_execute(ability_set[1]);
		timer = fps;
	}else if(ability3){
		script_execute(ability_set[2]);
		timer = fps;
	}else if(ability4){
		script_execute(ability_set[3]);
		timer = fps;
	}
}
if(timer > 0) timer -= 1;
