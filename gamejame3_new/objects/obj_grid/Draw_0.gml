/*
draw_set_color(c_white);
//draw sprites
for(var i=0; i < gid_size-1; i++){
	for(var j = 0; j < gid_size-1; j++){
		var p1 = (ds_grid_get(grid, j, i));
		var p2 = (ds_grid_get(grid, j+1, i));
		var p3 = (ds_grid_get(grid, j+1, i+1));
		var p4 = (ds_grid_get(grid, j, i+1));
		var index = (ceil(p1)*8) + (ceil(p2)*4) + (ceil(p3)*2) + ceil(p4);
		draw_sprite(spr_walls,index,i*64,j*64);
		draw_primitive_end();
		//if(p1!=0){
		//	var vp1 =  [j*64,i*64+p1*32];
		//	var vp2 =  [j*64,i*64];
		//	var vp3 =  [j*64+p1*32,i*64];
		//}
		//if(p2!=0){
		//	var vp4 =  [(j+1)*64+p2*-32,i*64];
		//	var vp5 =  [(j+1)*64,i*64];
		//	var vp6 =  [(j+1)*64,(i+1)*64+p2*-32];
		//}
		//if(p3!=0){
		//	var vp7 =  [(j+1)*64,(i+1)*64];
		//	var vp8 =  [(j+1)*64,(i+1)*64+p3*-32];
		//	var vp9 =  [(j+1)*64+p3*-32,(i+1)*64];
		//	vps[array_length_1d(vps)] = vp7;
		//	vps[array_length_1d(vps)] = vp8;
		//	vps[array_length_1d(vps)] = vp9;
		//}
		//if(p4!=0){
		//	var vp10 = [j*64+p4*32,(i+1)*64];
		//	var vp11 = [j*64,(i+1)*64];
		//	var vp12 = [j*64,(i+1)*64+p4*-32];
		//	vps[array_length_1d(vps)] =  vp10;
		//	vps[array_length_1d(vps)] = vp11;
		//	vps[array_length_1d(vps)] = vp12;
		//}
		
		//var vps = [vp1,vp2,vp3,vp4,vp5,vp6,vp7,vp8,vp9,vp10,vp11,vp12];
		
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
		/*
		draw_primitive_begin(pr_trianglestrip);
		
		if(index == 1){
			draw_vertex(i*64,(j+1)*64+p2*-32); // 2
			draw_vertex(i*64+p2*32,(j+1)*64); // 2
			draw_vertex(i*64,(j+1)*64); // 2
		}if(index == 2){
			draw_vertex((i+1)*64,(j+1)*64); // 3
			draw_vertex((i+1)*64,(j+1)*64+p3*-32); // 3
			draw_vertex((i+1)*64+p3*-32,(j+1)*64); // 3
		}if(index == 3){
			draw_vertex(i*64,(j+1)*64+p2*-32); // 2
			draw_vertex(i*64,(j+1)*64); // 2
		
			draw_vertex((i+1)*64,(j+1)*64+p3*-32); // 3
			draw_vertex((i+1)*64,(j+1)*64); // 3
		}if(index == 4){
			draw_vertex((i+1)*64,j*64+p4*32); // 4
			draw_vertex((i+1)*64-p4*32,j*64); // 4
			draw_vertex((i+1)*64,j*64); // 4
		}if(index == 5){
			draw_vertex((j+1)*64,i*64); // 2
			draw_vertex((j+1)*64,(i+1)*64+p2*-32); // 2
			draw_vertex((j+1)*64+p2*-32,i*64); // 2
				
			draw_vertex(j*64+p4*32,(i+1)*64); // 4
			draw_vertex(j*64,(i+1)*64+p4*-32); // 4
			draw_vertex(j*64,(i+1)*64); // 4
		}if(index == 6){
			draw_vertex((j+1)*64+p2*-32,i*64); // 2
			draw_vertex((j+1)*64,i*64); // 2
				
			draw_vertex((j+1)*64+p3*-32,(i+1)*64); // 3
			draw_vertex((j+1)*64,(i+1)*64); // 3
		}if(index == 7){
			draw_vertex((j+1)*64,(i+1)*64); // 3
				
			draw_vertex(j*64,(i+1)*64); // 4
				
			draw_vertex((j+1)*64,i*64); // 2
				
			draw_vertex(j*64,(i+1)*64+p4*-32);// 4
				
			draw_vertex((j+1)*64+p2*-32,i*64); // 2
		}if(index == 8){
			draw_vertex(j*64,i*64+p1*32); // 1
			draw_vertex(j*64,i*64); // 1
			draw_vertex(j*64+p1*32,i*64); // 1
		}if(index == 9){
			draw_vertex(j*64+p1*32,i*64); // 1
			draw_vertex(j*64,i*64); // 1
				
			draw_vertex(j*64+p4*32,(i+1)*64); // 4
			draw_vertex(j*64,(i+1)*64); // 4
		}if(index == 10){
			draw_vertex((j+1)*64,(i+1)*64); // 3
			draw_vertex((j+1)*64+p3*-32,(i+1)*64); // 3
			draw_vertex((j+1)*64,(i+1)*64+p3*-32); // 3
				
			draw_vertex(j*64,i*64+p1*32); // 1
			draw_vertex(j*64+p1*32,i*64); // 1
			draw_vertex(j*64,i*64); // 1
		}if(index == 11){
			draw_vertex(j*64,(i+1)*64); // 4
				
			draw_vertex(j*64,i*64); // 1
				
			draw_vertex((j+1)*64,(i+1)*64); // 3
				
			draw_vertex(j*64+p1*32,i*64); // 1
				
			draw_vertex((j+1)*64,(i+1)*64+p3*-32); // 3
		}if(index == 12){
			draw_vertex(j*64,i*64+p1*32); // 1
			draw_vertex(j*64,i*64); // 1
				
			draw_vertex((j+1)*64,(i+1)*64+p2*-32); // 2
			draw_vertex((j+1)*64,i*64); // 2
		}if(index == 13){
			draw_vertex(j*64,i*64); // 1
				
			draw_vertex((j+1)*64,i*64); // 2
				
			draw_vertex(j*64,(i+1)*64); // 4
				
			draw_vertex((j+1)*64,(i+1)*64+p2*-32); // 2
				
			draw_vertex(j*64+p4*32,(i+1)*64); // 4
		}if(index == 14){
			draw_vertex((j+1)*64,i*64); // 2
				
			draw_vertex((j+1)*64,(i+1)*64); // 3
				
			draw_vertex(j*64,i*64); // 1
				
			draw_vertex((j+1)*64+p3*-32,(i+1)*64); // 3
				
			draw_vertex(j*64,i*64+p1*32); // 1
		}if(index == 15){
			draw_vertex(j*64,i*64); // 1
				
			draw_vertex((j+1)*64,i*64); // 2
				
			draw_vertex(j*64,(i+1)*64); // 4
				
			draw_vertex((j+1)*64,(i+1)*64); // 3
		}
		
		
		
		
		
		/*
		switch(index){
			case 1:
				draw_vertex(i*64,(j+1)*64+p2*-32); // 2
				draw_vertex(i*64+p2*32,(j+1)*64); // 2
				draw_vertex(i*64,(j+1)*64); // 2
				break;
			case 2:
				draw_vertex((i+1)*64,(j+1)*64); // 3
				draw_vertex((i+1)*64,(j+1)*64+p3*-32); // 3
				draw_vertex((i+1)*64+p3*-32,(j+1)*64); // 3
				break;
			case 3:
				draw_vertex(i*64,(j+1)*64+p2*-32); // 2
				draw_vertex(i*64,(j+1)*64); // 2
		
				draw_vertex((i+1)*64,(j+1)*64+p3*-32); // 3
				draw_vertex((i+1)*64,(j+1)*64); // 3
				break;
			case 4:
				draw_vertex((i+1)*64,j*64+p4*32); // 4
				draw_vertex((i+1)*64-p4*32,j*64); // 4
				draw_vertex((i+1)*64,j*64); // 4
				break;
			case 5:
				draw_vertex((j+1)*64,i*64); // 2
				draw_vertex((j+1)*64,(i+1)*64+p2*-32); // 2
				draw_vertex((j+1)*64+p2*-32,i*64); // 2
				
				draw_vertex(j*64+p4*32,(i+1)*64); // 4
				draw_vertex(j*64,(i+1)*64+p4*-32); // 4
				draw_vertex(j*64,(i+1)*64); // 4
				break;
			case 6:
				draw_vertex((j+1)*64+p2*-32,i*64); // 2
				draw_vertex((j+1)*64,i*64); // 2
				
				draw_vertex((j+1)*64+p3*-32,(i+1)*64); // 3
				draw_vertex((j+1)*64,(i+1)*64); // 3
				break;
			case 7:
				draw_vertex((j+1)*64,(i+1)*64); // 3
				
				draw_vertex(j*64,(i+1)*64); // 4
				
				draw_vertex((j+1)*64,i*64); // 2
				
				draw_vertex(j*64,(i+1)*64+p4*-32);// 4
				
				draw_vertex((j+1)*64+p2*-32,i*64); // 2
				break;
			case 8:
				draw_vertex(j*64,i*64+p1*32); // 1
				draw_vertex(j*64,i*64); // 1
				draw_vertex(j*64+p1*32,i*64); // 1
				break;
			case 9:
				draw_vertex(j*64+p1*32,i*64); // 1
				draw_vertex(j*64,i*64); // 1
				
				draw_vertex(j*64+p4*32,(i+1)*64); // 4
				draw_vertex(j*64,(i+1)*64); // 4
				break;
			case 10:
				draw_vertex((j+1)*64,(i+1)*64); // 3
				draw_vertex((j+1)*64+p3*-32,(i+1)*64); // 3
				draw_vertex((j+1)*64,(i+1)*64+p3*-32); // 3
				
				draw_vertex(j*64,i*64+p1*32); // 1
				draw_vertex(j*64+p1*32,i*64); // 1
				draw_vertex(j*64,i*64); // 1
				break;
			case 11:
				draw_vertex(j*64,(i+1)*64); // 4
				
				draw_vertex(j*64,i*64); // 1
				
				draw_vertex((j+1)*64,(i+1)*64); // 3
				
				draw_vertex(j*64+p1*32,i*64); // 1
				
				draw_vertex((j+1)*64,(i+1)*64+p3*-32); // 3
				break;
			case 12:
				draw_vertex(j*64,i*64+p1*32); // 1
				draw_vertex(j*64,i*64); // 1
				
				draw_vertex((j+1)*64,(i+1)*64+p2*-32); // 2
				draw_vertex((j+1)*64,i*64); // 2
				break;
			case 13:
				draw_vertex(j*64,i*64); // 1
				
				draw_vertex((j+1)*64,i*64); // 2
				
				draw_vertex(j*64,(i+1)*64); // 4
				
				draw_vertex((j+1)*64,(i+1)*64+p2*-32); // 2
				
				draw_vertex(j*64+p4*32,(i+1)*64); // 4
				break;
			case 14:
				draw_vertex((j+1)*64,i*64); // 2
				
				draw_vertex((j+1)*64,(i+1)*64); // 3
				
				draw_vertex(j*64,i*64); // 1
				
				draw_vertex((j+1)*64+p3*-32,(i+1)*64); // 3
				
				draw_vertex(j*64,i*64+p1*32); // 1
				break;
			case 15:
				draw_vertex(j*64,i*64); // 1
				
				draw_vertex((j+1)*64,i*64); // 2
				
				draw_vertex(j*64,(i+1)*64); // 4
				
				draw_vertex((j+1)*64,(i+1)*64); // 3
				break;
		}
		
		
		
		
		
		
		
		//for(var k=2;k<array_length_1d(vps);k++){
		//	var vp_1 = vps[k-1];
		//	var vp_2 = vps[k-2];
		//	var vp   = vps[k  ];
		//	print(vp);
		//	print(array_length_1d(vps));
		//	draw_vertex(vp[0],vp[1]);
		//	draw_vertex(vp_1[0],vp_1[1]);
		//	draw_vertex(vp_2[0],vp_2[1]);
		//}
		
		
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
			draw_vertex(j*64+p4*32,(i+1)*64 );
			draw_vertex(j*64,(i+1)*64		);
			draw_vertex(j*64,(i+1)*64+p4*-32);
		}
		
		
		
		for(var k=0;k<array_length_1d(ps);k++){
			if(ps[k] != 0){
				draw_vertex(((j+np[(2*k)+1])*64)+ps[k]*32,((i+np[(2*k)])*64));
				draw_vertex(((j+np[(2*k)+1])*64),((i+np[(2*k)])*64)+ps[k]*32);
				draw_vertex(((j+np[(2*k)+1])*64),((i+np[(2*k)])*64));
			}
		}
		
		//print(ceil(p1)+ceil(p2)+ceil(p3)+ceil(p4));
		
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
*/