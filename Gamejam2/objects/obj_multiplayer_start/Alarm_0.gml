time -= 1;
txt_fall = 15;
txt_alpha = 0;
if(time <= 0){
	if(global.players_ready){
		room_goto_next();
	}
}
print("alarm")