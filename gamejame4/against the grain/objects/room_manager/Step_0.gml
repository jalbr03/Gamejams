if(room == Rm_level){
	if(!audio_is_playing(snd_wind)) audio_play_sound(snd_wind,8,1);
	
	if(!instance_exists(obj_head)){
		var posex = 0;
		var posey = 0;
		for(var i=1;i<3;i++){
			if(highscore_name(i) == "player posex"){
				posex = highscore_value(i);
			}else{
				posey = highscore_value(i);
			}
		}
		if(posex != 0){
			instance_create_layer(posex,posey,layer,obj_head);
		}
		else{
			instance_create_layer(obj_player_start.x,obj_player_start.y,layer,obj_head);
		}
	}
}
//highscore_clear();
