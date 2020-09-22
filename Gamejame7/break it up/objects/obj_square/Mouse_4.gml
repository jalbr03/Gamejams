if(!destroy_self){
	o_num_x = (mouse_x-x)/(sprite_width/(grid_width))-1;
	o_num_y = (mouse_y-y)/(sprite_height/(grid_height))-1;

	cut_x = round(o_num_x);
	cut_y = round(o_num_y);
	cut_x_dec = o_num_x-cut_x;
	cut_y_dec = o_num_y-cut_y;
	cut_x_dec = abs(round(cut_x_dec)-cut_x_dec);
	cut_y_dec = abs(round(cut_y_dec)-cut_y_dec);
	//print("cut_x "+string(cut_x));
	//print("cut_y "+string(cut_y));
	print("cut_x_dec "+string(cut_x_dec));
	print("cut_y_dec "+string(cut_y_dec));

	//cut_abs_x = abs(cut_x-(grid_width/2));
	//cut_abs_y = abs(cut_y-(grid_height/2));

	if(cut_y_dec > cut_x_dec){
		cut_at = [-1,cut_x+1];
	}else{
		cut_at = [cut_y+1,-1];
	}
	is_cut = true;
}