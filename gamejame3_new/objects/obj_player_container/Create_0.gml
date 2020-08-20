player_info = ds_list_create();
dropped_down = false;
points_show = 0;
points_fall = 13;
points_spd = 0;
points_alpha = 0;
winner_point = 0;
show_winner = false;
winner_rot = 0;
max_points_to_win = 5;

ds_list_add(player_info,0,c_white,-10,3,1,c_blue,-12,5);

/*
var contNUM = instance_number(obj_player_container);
if(contNUM > 0){
	for(var i=0;i<contNUM;i++){
		otherid = instance_find(obj_player_container,i);
		if(otherid != id){
			with(otherid){
				ds_list_destroy(player_info);
				instance_destroy();
				print("by")
			}
		}
	}
}
print("Num of me "+string(contNUM));