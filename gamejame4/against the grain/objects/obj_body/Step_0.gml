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
if(stay_with){
	phy_position_x = creator.x;
	phy_position_y = creator.y;
}
//creator.tail_contact = tail_contact;