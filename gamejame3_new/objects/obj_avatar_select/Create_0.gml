imgspd = 1;
selected = false;
states_array[customstates.join]         = scr_customize_join;
states_array[customstates.color]        = scr_customize_color;
states_array[customstates.player_done]  = scr_customize_player_done;
state = customstates.join;

//sliders
spacing = 30;
dist_from_obj = 90;
slider_offset = 192;

sliderR = noone;
sliderG = noone;
sliderB = noone;
cursor	= noone;
done    = noone;
current_select = 0;

//player done
room_select_player = noone;//this is the id for the object for the player to play with
data_sent = false;

axis_used = false;

size_off = 0;
start_size = image_xscale;