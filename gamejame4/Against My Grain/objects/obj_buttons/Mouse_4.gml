switch(type){
	case "new game":
		file_delete("Player_pose.txt");
		obj_fade.fade = true;
		obj_fade.fade_dir = 1;
		obj_fade.room_to_goto = room_next(room);
	break;
	case "continue":
		obj_fade.fade = true;
		obj_fade.fade_dir = 1;
		obj_fade.room_to_goto = room_next(room);
	break;
	case "credits":
		obj_fade.fade = true;
		obj_fade.fade_dir = 1;
		obj_fade.room_to_goto = Rm_credits;
	break;
	case "quit":
		game_end();
	case "options":
		obj_player_menu.menu = true;
		global.pause = true;
	break;
}
