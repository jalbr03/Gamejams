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
volumes = [0.5,0.5];
music_sounds = [snd_room_join,snd_room_fight];
sfx_sounds = [];
selection = 0;
was_input_pressed = false;

audio_play_sound(snd_room_join,1,1);
