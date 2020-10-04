if(buttontype == "start"){
	obj_player_menu.menu = true;
}else if(buttontype == "exit"){
	game_end();
}else if(buttontype == "back"){
	room_goto(RM_title);
}