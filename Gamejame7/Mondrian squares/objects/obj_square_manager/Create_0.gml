x = room_width/2;
y = room_height/2;
mouse = false;
last_mouse = false;
start_mouse = [];
colors = ds_list_create();
ds_list_add(colors, c_red,c_green,c_blue,c_orange,c_purple,c_yellow);
ds_list_shuffle(colors);
new_color = 0;
group_col = ds_list_find_value(colors,new_color); //make_color_hsv(random(255),255,255);
selected_list = ds_list_create();
global.passable = true;
global.groups = [[]];
global.new_score = grid_width*grid_height;
start = false;
for(var yy=-(grid_height-1)/2;yy<grid_height/2;yy++){
	for(var xx=-(grid_width-1)/2;xx<grid_width/2;xx++){
		var box = instance_create_layer(x+(xx*sprite_width),y+(yy*sprite_height),layer,obj_square);
		//var len = array_length(global.groups[0]);
		box.grid_pose = [0,array_length(global.groups[0])];
		global.groups[0][array_length(global.groups[0])] = box;
	}
}
//show_debug_overlay(true);

var test = organize_list();
global.groups = test;
print("test "+string(array_length(test)));

for(var i=0;i<array_length(global.groups);i++){
	for(var j=0;j<array_length(global.groups[i]);j++){
		print("test_ij "+string(global.groups[i][j]) + " num " + string(i));
	}
}
print("end")
x = 0;
y = 0;
alarm[0] = 30;