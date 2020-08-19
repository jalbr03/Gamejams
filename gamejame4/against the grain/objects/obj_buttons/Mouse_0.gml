switch(type){
	case "new game":
		highscore_clear();
		room_goto_next();
	break;
	case "continue":
		room_goto_next();
	break;
	case "credits":
		room_goto(Rm_credits);
	break;
	case "quit":
		game_end();
	break;
}