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
}else if(room == Rm_loading){
	if(tip_num == -1) tip_num = random(array_length(tips));
	if(alarm[0] == -1) alarm[0] = fps*(string_length(tips[tip_num])/12);
}else{
	if(room == rm_splash){
		if(!audio_is_playing(snd_music)) audio_play_sound(snd_music,10,1);
		if(audio_is_playing(snd_claps)) audio_stop_sound(snd_claps);
	}
	if(tip_num != -1) tip_num = -1;
}
