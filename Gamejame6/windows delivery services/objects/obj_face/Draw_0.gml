draw_self();

try{
	if(current_letter < string_length(line_sciens[current_scien][current_frame])){
		current_letter += 1;
		letters += string_char_at(line_sciens[current_scien][current_frame],current_letter);
	}
	draw_text(x,y+64,letters);
}catch(error){
	print(error)
}

