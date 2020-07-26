enum sound{
	music,
	sfx
}
for(var i=0;i<12;i++){
	gamepad_set_axis_deadzone(i,0.4);
}

button_size = 64;
button_yoff = -(room_height/4)*3;
menu = false;
options = false;
menu_options = ["CONTINUE","OPTIONS","QUIT"];
opt_options = ["MUSIC","SOUND FX","BACK"];
volumes = [0.8,0.3];
music_sounds = [snd_room_join,snd_room_fight];
sfx_sounds = [snd_tracks,snd_shoot,snd_selection,snd_applause];
selection = 0;
was_input_pressed = false;

join_music = audio_play_sound(snd_room_join,10,1);
level_music = audio_play_sound(snd_room_fight,10,1);
audio_pause_sound(level_music);

for(var i=0;i<array_length_1d(music_sounds);i++){
	audio_sound_gain(music_sounds[i],volumes[sound.music],0);
	audio_sound_gain(music_sounds[i],volumes[sound.music],audio_sound_length(music_sounds[i])*1000);
}
				
for(var i=0;i<array_length_1d(sfx_sounds);i++){
	audio_sound_gain(sfx_sounds[i],volumes[sound.sfx],0);
	audio_sound_gain(sfx_sounds[i],volumes[sound.sfx],audio_sound_length(sfx_sounds[i])*1000);
}


//audio_sound_gain(snd_selection,volumes[sound.sfx],0);
//audio_sound_gain(snd_selection,sfx_sounds[sound.sfx],audio_sound_length(sfx_sounds[i])*1000);