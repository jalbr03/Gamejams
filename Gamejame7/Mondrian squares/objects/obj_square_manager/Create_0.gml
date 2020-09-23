x = room_width/2;
y = room_height/2;
for(var yy=-(grid_height-1)/2;yy<grid_height/2;yy++){
	for(var xx=-(grid_width-1)/2;xx<grid_width/2;xx++){
		instance_create_layer(x+(xx*sprite_width),y+(yy*sprite_height),layer,obj_square);
	}
}