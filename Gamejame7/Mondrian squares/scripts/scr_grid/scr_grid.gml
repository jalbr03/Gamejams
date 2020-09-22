// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function grid_check(){
	var unique_shape = true;
	for(var i=0;i<instance_number(obj_square);i++){
		var c_box = instance_find(obj_square,i);
		var c_box_w = c_box.grid_width;
		var c_box_h = c_box.grid_height;
		for(var j=0;j<instance_number(obj_square);j++){
			var n_box = instance_find(obj_square,j);
			var n_box_w = n_box.grid_width;
			var n_box_h = n_box.grid_height;
			if(n_box != c_box){
				if(n_box_w == c_box_w && n_box_h == c_box_h || n_box_w == c_box_h && n_box_h == c_box_w){
					print(c_box_w);
					unique_shape = false;
					var wrong = instance_create_layer(c_box.x,c_box.y,layer,obj_wrong);
					wrong.image_xscale = (1/sprite_width)*c_box_w*sprite_width;
					wrong.image_yscale = (1/sprite_height)*c_box_h*sprite_height;
					var wrong = instance_create_layer(n_box.x,n_box.y,layer,obj_wrong);
					wrong.image_xscale = (1/sprite_width)*n_box_w*sprite_width;
					wrong.image_yscale = (1/sprite_height)*n_box_h*sprite_height;
					break;
				}
			}
		}
	}
	if(unique_shape){
		obj_score.updatescore = true;
	}
	return unique_shape;
}
function update_score(){
	var score_list = ds_list_create();
	for(var i=0;i<instance_number(obj_square);i++){
		var c_box = instance_find(obj_square,i);
		ds_list_add(score_list,c_box.grid_score)
	}
	
	ds_list_sort(score_list, 1);
	list_size = ds_list_size(score_list);
	for(var i=0;i<list_size;i++){
		print(score_list[|i]);
	}
	global.new_score = score_list[|list_size-1]-score_list[|0];
}