if(room = Rm_level){
	if(num_of_contacts == 0){
		//var wall = ds_list_find_value(walls,0);
		//wall_y = wall.y;
		
		highscore_clear();
		//print(wall_y);
		highscore_add("player posex",x);
		highscore_add("player posey",wall_y);
	}
}
