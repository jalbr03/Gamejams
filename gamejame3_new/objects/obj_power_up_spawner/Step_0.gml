var spawn_powerup = irandom(1000);
if(spawn_powerup == 0){
	instance_create_layer(random(room_width),random(room_height),layer,obj_power_glitch_spawn);
}