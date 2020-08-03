/// @description Insert description here
switch (menu_type){
	case "start":
		room_goto_next();
		break;
	
	case "options":
		//do options suff
		break;
	
	case "credits":
		//do credits suff
		break;
	
	case "quit":
		game_end();
		break;
}
