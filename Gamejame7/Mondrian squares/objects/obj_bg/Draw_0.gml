if(room != RM_title){
	if(global.passable){
		var R = sin(time*1.3)/6;
		draw_circle_color(x,y,room_width*(1.5+R),middle_col,correct_col,0);
		for(var i=0;i<room_width/spacing;i++){
			for(var j=0;j<room_height/spacing;j++){
				var blend = merge_color(middle_col,correct_col,point_distance(x,y,j*spacing*2,i*spacing*2)/room_width);
				draw_sprite_ext(spr_shapes,sub_img,j*spacing*2,i*spacing*2,1,1,cos(time)*10,blend,1);
			}
		}
	}else{
		var R = sin(time*2)/1.5;
		draw_circle_color(x,y,room_width*(1.5+R),middle_col,wrong_col,0);
		for(var i=0;i<room_width/spacing;i++){
			for(var j=0;j<room_height/spacing;j++){
				var blend = merge_color(middle_col,wrong_col,point_distance(x,y,j*spacing,i*spacing)/room_width);
				draw_sprite_ext(spr_shapes,sub_img,j*spacing*2,i*spacing*2,1,1,cos(time)*10,blend,1);
			}
		}
	}
}