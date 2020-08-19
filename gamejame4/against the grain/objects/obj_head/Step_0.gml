ds_list_clear(walls);
collision_line_list(x,y,x,y+room_height,obj_static,0,1,walls,1);
var wall = ds_list_find_value(walls,0);
wall_y = wall.y;

var move = mouse_check_button(mb_left);

phy_rotation = -point_direction(x,y,mouse_x,mouse_y);
if(move){
	num_of_contacts = ds_list_size(tail_contact);
	phy_linear_velocity_x += ((mouse_x-x)/2.5)*num_of_contacts/length;
	phy_linear_velocity_y += ((mouse_y-y)/2.5)*num_of_contacts/length;
	if(in_sellect){
		phy_linear_velocity_x += ((mouse_x-x)/2.5)*1/length;
		phy_linear_velocity_y += ((mouse_y-y)/2.5)*1/length;
	}
}
time_tile_next_save -= 1;
