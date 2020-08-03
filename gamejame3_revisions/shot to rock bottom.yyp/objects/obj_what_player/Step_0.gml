if(!place_meeting(x,y,obj_player)){
	locked = false;
	if(what_player == 0){
		global.player1_ready = false;
	}
	if(what_player != 0){
		if(!global.player1_ready){
			locked = true;
		}else{
			locked = false;
		}
	}
}else{
	if(what_player == 0){
		global.player1_ready = true;
	}
}
