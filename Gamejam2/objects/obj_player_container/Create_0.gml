player_info = ds_list_create();
dropped_down = false;

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