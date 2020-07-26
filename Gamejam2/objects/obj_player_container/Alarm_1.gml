if(room = rm_winner){
	show_winner = true;
	audio_play_sound(snd_applause,4,0);
	instance_create_layer(x,y,"confetti",obj_confetti_spawner);
	alarm[2] = 240;
}