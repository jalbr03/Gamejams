//if(mouse_check_button_pressed(mb_left)){
//	cut_x = floor((mouse_x-x)/(sprite_width/grid_width));
//	cut_y = floor((mouse_y-y)/(sprite_height/grid_height));
	
//	if(cut_x > 0 && cut_x < grid_width){
//		cut_at = [0,cut_x];
//	}
//	else if(cut_y > 0 && cut_y < grid_height){
//		cut_at = [cut_y,0];
//	}
//	is_cut = true;
//}
if(is_cut){
	if(cut_at[0] > 0 && cut_at[0] < grid_height){
		sqr1 = instance_create_layer(x,y+(sprite_height/grid_height)*cut_at[0],layer,obj_square);
		sqr2 = instance_create_layer(x,y,layer,obj_square);
		sqr1.grid_width = grid_width;
		sqr1.grid_height = grid_height-cut_at[0];
		sqr2.grid_width = grid_width;
		sqr2.grid_height = cut_at[0];
		var is_unique = grid_check();
		if(is_unique){
			if(alarm[1] == -1) alarm[1] = 2;
		}else{
			sqr1.destroy_self = true;
			sqr2.destroy_self = true;
		}
	}else if(cut_at[1] > 0 && cut_at[1] < grid_width){
		sqr1 = instance_create_layer(x+(sprite_width/grid_width)*cut_at[1],y,layer,obj_square);
		sqr2 = instance_create_layer(x,y,layer,obj_square);
		sqr1.grid_width = grid_width-cut_at[1];
		sqr1.grid_height = grid_height;
		sqr2.grid_width = cut_at[1];
		sqr2.grid_height = grid_height;
		alarm[2] = 1;
		var is_unique = grid_check();
		if(is_unique){
			if(alarm[1] == -1) alarm[1] = 2;
		}else{
			sqr1.destroy_self = true;
			sqr2.destroy_self = true;
		}
	}
	is_cut = false;
	cut_at = [-1,-1];
}

if(destroy_self){
	if(alarm[1] == -1) alarm[1] = 2;
}
