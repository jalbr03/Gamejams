switch type{
	case "start":
	path_start(pth_start,12,path_action_stop,true);
	break;
	
	case "quit":
	path_start(pth_quit,10,path_action_stop,true);
	break;
	
	case "credits":
	path_start(pth_credits,8,path_action_stop,true);
	break;
}
//is_hovering = false;
current_color = b_color;