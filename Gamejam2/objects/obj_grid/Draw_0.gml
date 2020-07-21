
draw_set_color(c_white);
//draw sprites
for(var i=0; i < gid_size-1; i++){
	for(var j = 0; j < gid_size-1; j++){
		var p1 = ceil(ds_grid_get(grid, i, j));
		var p2 = ceil(ds_grid_get(grid, i+1, j));
		var p3 = ceil(ds_grid_get(grid, i+1, j+1));
		var p4 = ceil(ds_grid_get(grid, i, j+1));
		
		//if(p1!=0){
			//draw_line(j*64+p1*32,i*64,j*64,	i*64+p1*32);	//dash
			//draw_line(j*64, i*64+p1*32,		j*64,i*64);		//down
			//draw_line(j*64,i*64,			j*64+p1*32,i*64);	//side 
		//}
		//if(p2!=0){
			//draw_line(j*64,(i+1)*64,		j*64,(i+1)*64+p2*-32);
			//draw_line(j*64,(i+1)*64,		j*64+p2*32,(i+1)*64);
			//draw_line(j*64+p2*32,(i+1)*64,	j*64,(i+1)*64+p2*-32);	//dash
		//}
		//if(p3!=0){
			//draw_line((j+1)*64,(i+1)*64,		 (j+1)*64,(i+1)*64+p3*-32);
			//draw_line((j+1)*64,(i+1)*64,         (j+1)*64+p3*-32,(i+1)*64);
			//draw_line((j+1)*64+p3*-32,(i+1)*64,  (j+1)*64,(i+1)*64+p3*-32); //dash
		//}
		//if(p4!=0){
			//draw_line(j*64+p1*-32,i*64,		j*64,i*64+p4*32);
			//draw_line(j*64,i*64+p4*32,		j*64,i*64);
			//draw_line(j*64,i*64,			j*64+p4*-32,i*64);
		//}
		//var ps = [ceil(p1),ceil(p2),ceil(p3),ceil(p4)];
		//var np = [0,0,1,0,1,1,0,1];
		draw_primitive_begin(pr_trianglestrip);
		//draw_set_color(make_color_rgb(255/p1,255/p2,255/p3));
		/*
		draw_vertex((i+1)*64,j*64+p4*32);
		draw_vertex((i+1)*64-p4*32,j*64);
		draw_vertex((i+1)*64,j*64);
		
		draw_vertex((i+1)*64+p3*-32,(j+1)*64);
		draw_vertex((i+1)*64,(j+1)*64);
		draw_vertex((i+1)*64,(j+1)*64+p3*-32);
		
		draw_vertex(i*64,(j+1)*64+p2*-32);
		draw_vertex(i*64+p2*32,(j+1)*64);
		draw_vertex(i*64,(j+1)*64);
		
		draw_vertex(i*64+p1*32,j*64);
		draw_vertex(i*64,j*64);
		draw_vertex(i*64,j*64+p1*32);
		*/
		
		if(p1>0){
			draw_vertex(j*64,i*64+p1*32);
			draw_vertex(j*64,i*64);
			draw_vertex(j*64+p1*32,i*64);
		}
		if(p2>0){
			draw_vertex((j+1)*64+p2*-32,i*64);
			draw_vertex((j+1)*64,i*64);
			draw_vertex((j+1)*64,(i+1)*64+p2*-32);
		}
		if(p3>0){
			draw_vertex((j+1)*64,(i+1)*64);
			draw_vertex((j+1)*64,(i+1)*64+p3*-32);
			draw_vertex((j+1)*64+p3*-32,(i+1)*64);
		}
		if(p4>0){
			draw_vertex(j*64+p4*32,(i+1)*64);
			draw_vertex(j*64,(i+1)*64);
			draw_vertex(j*64,(i+1)*64+p4*-32);
		}
		
		
		//*/
		//for(var k=0;k<array_length_1d(ps);k++){
		//	if(ps[k] != 0){
		//		draw_vertex(((j+np[(2*k)+1])*64)+ps[k]*32,((i+np[(2*k)])*64));
		//		draw_vertex(((j+np[(2*k)+1])*64),((i+np[(2*k)])*64)+ps[k]*32);
		//		draw_vertex(((j+np[(2*k)+1])*64),((i+np[(2*k)])*64));
		//	}
		//}
		//print(ceil(p1)+ceil(p2)+ceil(p3)+ceil(p4));
		//var index = (ceil(p1)*8) + (ceil(p2)*4) + (ceil(p3)*2) + ceil(p4);
		//draw_sprite(spr_walls,index,i*64,j*64);
		draw_primitive_end();
	}
}
draw_set_color(c_red);
for(var i=0; i < gid_size; i++){
	for(var j = 0; j < gid_size; j++){
		print(ceil(ds_grid_get(grid, i, j)))
		if(ceil(ds_grid_get(grid, i, j)) > 0){
			print("fasle")
			draw_circle(i*64, j*64 , 8, false);
		}
		draw_circle(i*64, j*64 , 8, true);
	}
}