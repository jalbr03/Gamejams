obj_player_menu.menu = true;
with(obj_player_menu){
	if(room != rm_splash&&room != Rm_credits&&room != Rm_loading&&room != Rm_win){
		button_yoff = -(room_height/4)*3;
	}
	if(room == Rm_level){
		if(instance_exists(obj_head)){
			save_player_pose();
		}
	}
}