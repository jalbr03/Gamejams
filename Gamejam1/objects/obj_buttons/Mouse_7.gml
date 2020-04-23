switch type{
	case "start":
	room_goto(johnyMoo_test);
	break;
	
	case "quit":
	game_end();
	break;
	
	case "credits":
	room_goto(RM_credits);
	break;
}