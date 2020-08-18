var move = mouse_check_button(mb_left);

phy_rotation = -point_direction(x,y,mouse_x,mouse_y);
if(move){
	num_of_contacts = ds_list_size(tail_contact);
	phy_linear_velocity_x += ((mouse_x-x)/2.5)*num_of_contacts/length;
	phy_linear_velocity_y += ((mouse_y-y)/2.5)*num_of_contacts/length;
}

//print(num_of_contacts);