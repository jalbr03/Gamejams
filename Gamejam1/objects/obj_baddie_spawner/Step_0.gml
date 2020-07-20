var spawn = irandom_range(0,500);
if(spawn == 0) spawn_baddie = true;
if(spawn_baddie){
	var side = choose(0,1)*room_width;
	var height = random_range(0,room_height);
	var baddie = instance_create_layer(side,height,layer,obj_baddie);
	num_of_baddies_spawned += 0.1;
	baddie.kill_value += floor(num_of_baddies_spawned);
	baddie.hp += floor(num_of_baddies_spawned)
	baddie.hpbar = 100/baddie.hp;
	chance_to_spawn -= 1;
	spawn_baddie = false;
}