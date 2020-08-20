//switch(image_index){
//	case(0):
//		wall_pose = [-1,-1];
//	break;
//	case(1):
//		wall_pose = [0,sprite_height];
//	break;
//	case(2):
//		wall_pose = [sprite_width,sprite_height];
//	break;
//	case(3):
//		wall_pose = [sprite_width,(sprite_height/4)*3];
//	break;
//	case(4):
//		wall_pose = [sprite_width,0];
//	break;
//	case(5):
//		wall_pose = [sprite_width/2,sprite_height/2];
//	break;
//	case(6):
//		wall_pose = [(sprite_width/4)*3,sprite_height/2];
//	break;
//	case(7):
//		wall_pose = [sprite_width,sprite_height];
//	break;
//	case(8):
//		wall_pose = [0,0];
//	break;
//	case(9):
//		wall_pose = [sprite_width/4,sprite_height/2];
//	break;
//	case(10):
//		wall_pose = [sprite_width/2, sprite_height/2];
//	break;
//	case(11):
//		wall_pose = [0, sprite_height];
//	break;
//	case(12):
//		wall_pose = [sprite_width/2,sprite_height/4];
//	break;
//	case(13):
//		wall_pose = [0, 0];
//	break;
//	case(14):
//		wall_pose = [sprite_width, 0];
//	break;
//	case(15):
//		wall_pose = [1, 1];
//	break;
//}

if(image_index != 0){
	wall_pose[0] += x;
	wall_pose[1] += y;
	if(free_wall != noone){
		instance_destroy(free_wall);
		free_wall = noone;
	}
}else{
	if(free_wall == noone){
		free_wall = instance_create_layer(x+32,y+32,layer,obj_free_wall);
	}
}
