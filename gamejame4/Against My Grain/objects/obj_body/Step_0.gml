//var tail_contact = creator.tail_contact;
var list_pose = ds_list_find_index(creator.tail_contact,id);
if(!place_meeting(x,y,obj_static)){
	if(list_pose != -1){
		ds_list_delete(creator.tail_contact,list_pose);
	}
}else{
	if(list_pose == -1){
		ds_list_add(creator.tail_contact,id);
	}
}
if(stay_with == creator){
	phy_position_x = creator.x;
	phy_position_y = creator.y;
}else{
	var other_rot = stay_with.phy_rotation;
	phy_position_x = stay_with.x-lengthdir_x(body_width,other_rot);
	phy_position_y = stay_with.y+lengthdir_y(body_width,other_rot);
}
//creator.tail_contact = tail_contact;