if(!window_get_fullscreen()) window_set_fullscreen(true);
audio_play_sound(snd_start_music,2,1);
if(room == johnyMoo_test){
	audio_stop_all();
	audio_play_sound(snd_music,2,1);
	audio_play_sound(snd_birds,2,1);
}