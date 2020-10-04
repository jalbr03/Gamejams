enum sound{
	music,
	sfx
}
for(var i=0;i<12;i++){
	gamepad_set_axis_deadzone(i,0.4);
}

button_yoff = -(room_height/4)*3;
menu = false;
global.menu_options = ["4X4","5X5","6X6","7X7","8X8","9X9","10X10"];
selection = 0;

global.pause = false;

buttons = [];
//audio_sound_gain(snd_selection,volumes[sound.sfx],0);
//audio_sound_gain(snd_selection,sfx_sounds[sound.sfx],audio_sound_length(sfx_sounds[i])*1000);