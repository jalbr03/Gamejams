if(layer_sequence_get_headpos(opening) > layer_sequence_get_length(opening)-1){
	room_goto_next();
}
print(string(layer_sequence_get_headpos(opening))+"    "+string(layer_sequence_get_length(opening)));