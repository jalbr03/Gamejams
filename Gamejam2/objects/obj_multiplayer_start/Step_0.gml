for (var i = 0; i < 12 && self.number_of_players < self.max_players; i++) {
	var AButtonWasPressed = gamepad_button_check_pressed(i, gp_face1);
	
	if (AButtonWasPressed) {
		show_debug_message("Detected button press");

		var isNewController = true;
		
		for (var j = 0; j < self.number_of_players+1; j++) {
			if (self.players[j].controller_id == i) {
				isNewController = false;
				break;
			}
		}
		
		if (isNewController) {
			show_debug_message("Welcome to the game!");
			for (var k = 0; k < self.number_of_players+1; k++) {
				if(self.players[k].controller_id < 0){
					self.players[k].controller_id = i;	
					self.number_of_players++;
					break;
				}
			}
		}
	}
}
if(global.players_ready){
	if(alarm[0] == -1) alarm[0] = fps*3;
}