if(surface_exists(surf)){
	surface_set_target(surf);
	draw_clear_alpha(c_black,0);
	gpu_set_blendmode(bm_add);
	with(obj_ball){
		draw_self();
	}
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	
	gpu_set_alphatestenable(true);
	gpu_set_alphatestref(100);
	draw_surface(surf,0,0);
	gpu_set_alphatestenable(false);
}else{
	surf = surface_create(room_width,room_height);
}