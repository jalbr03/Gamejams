enum sound{
	music,
	sfx
}
for(var i=0;i<12;i++){
	gamepad_set_axis_deadzone(i,0.4);
}

button_yoff = -(room_height/4)*3;
menu = false;
options = false;
menu_options = ["CONTINUE","OPTIONS","QUIT TO TITLE"];
opt_options = ["MUSIC","SOUND FX","Toggle Full Screen","Toggle controller","BACK"];
volumes = [0.8,0.3];
music_sounds = [snd_music];
sfx_sounds = [snd_wind,snd_claps];
selection = 0;

for(var i=0;i<array_length(music_sounds);i++){
	audio_sound_gain(music_sounds[i],volumes[sound.music],0);
	audio_sound_gain(music_sounds[i],volumes[sound.music],audio_sound_length(music_sounds[i])*1000);
}
				
for(var i=0;i<array_length(sfx_sounds);i++){
	audio_sound_gain(sfx_sounds[i],volumes[sound.sfx],0);
	audio_sound_gain(sfx_sounds[i],volumes[sound.sfx],audio_sound_length(sfx_sounds[i])*1000);
}

global.pause = false;
//audio_sound_gain(snd_selection,volumes[sound.sfx],0);
//audio_sound_gain(snd_selection,sfx_sounds[sound.sfx],audio_sound_length(sfx_sounds[i])*1000);