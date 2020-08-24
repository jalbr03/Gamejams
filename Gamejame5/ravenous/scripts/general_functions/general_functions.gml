// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function print(input_string){
	show_debug_message(input_string);
}
function str(input_string){
	return string(input_string);
}

function part_system_auto(size, shrink_spd, min_size, max_size, min_spd, max_spd, dir, col, num, min_life, max_life) {
	var exp_syst = part_system_create();
	var exp_emit = part_emitter_create(exp_syst);
	var exp_part1 = part_type_create();
	//part 1
	part_type_shape(exp_part1,pt_shape_disk);
	part_system_depth(exp_part1,-1);
	part_type_scale(exp_part1,size,size);

	part_type_color2(exp_part1,col,c_white);
	part_type_size(exp_part1,min_size,max_size,shrink_spd,0);
	part_type_speed(exp_part1,min_spd,max_spd,0,0);

	part_type_direction(exp_part1,dir,dir,0,0);
	//part_type_gravity(exp_part1,0.01,90);
	part_type_life(exp_part1,min_life,max_life);

	//emit
	part_emitter_region(exp_syst,exp_emit,x-20,x+20,y-20,y+20,ps_shape_rectangle,ps_distr_gaussian);
	part_emitter_burst(exp_syst,exp_emit,exp_part1,num);
}

