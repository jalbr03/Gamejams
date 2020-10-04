var menu_press = false;
var select
var back = false;
if(!menu){
	menu_press = keyboard_check_pressed(vk_escape);
}else{
	back = keyboard_check_pressed(vk_escape);
}
select = mouse_check_button_pressed(mb_left);


if(menu_press){
	if(room != RM_title){
		menu = !menu;
		button_yoff = -(room_height/4)*3;
	}
}
//menu
if(menu){
	global.pause = true;
	if(!instance_exists(obj_menu_button)){
		for(var i=0;i<array_length(global.menu_options);i++){
			var button = instance_create_layer(x,0,layer,obj_menu_button);
			button.number = i;
			button.menu = 0;
			button.max_number = array_length(global.menu_options);
			button.creator = id;
			buttons[array_length(buttons)] = button;
		}
	}
	var mouse_in_range = false;
	for(var i=0;i<array_length(buttons);i++){
		var button = buttons[i];
		if(button.close_to_mouse){
			mouse_in_range = true;
		}
	}
	if(!mouse_in_range){
		selection = -1;
	}
	
	button_yoff += -button_yoff/10;
	
	if(back){
		if(room == RM_title){
			menu = false;
		}
		if(!options){
			menu = false;
		}else if(menu){
			options = false;
		}
	}
	
	if(select){
		switch(selection){
			case -1:
				menu = false;
				break;
			case 0:
				room_goto(RM_4x4);
				break;
			case 1:
				room_goto(RM_5x5);
				break;
			case 2:
				room_goto(RM_6x6);
				break;
			case 3:
				room_goto(RM_7x7);
				break;
			case 4:
				room_goto(RM_8x8);
				break;
			case 5:
				room_goto(RM_9x9);
				break;
			case 6:
				room_goto(RM_10x10);
				break;
		}
		menu = false;
	}
}else{
	if(instance_exists(obj_menu_button)){
		for(var i=0;i<instance_number(obj_menu_button);i++){
			instance_destroy(obj_menu_button);
		}
	}
	buttons = []
	global.pause = false;
}
