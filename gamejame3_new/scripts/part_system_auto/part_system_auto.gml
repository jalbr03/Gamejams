function part_system_auto(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13, argument14) {
	var size1 = argument0;
	var size2 = argument1;

	var shrink_spd1 = argument2;
	var shrink_spd2 = argument3;

	var min_size = argument4;
	var max_size = argument5;

	var min_spd = argument6;
	var max_spd = argument7;

	var dir = argument8;
	var col = argument9;
	var num = argument10;
	var min_life = argument11;
	var max_life = argument12;
	var xx = argument13;
	var yy = argument14;
	var exp_syst = part_system_create();
	var exp_emit = part_emitter_create(exp_syst);
	var exp_part1 = part_type_create();
	var exp_part2 = part_type_create();
	//part 1
	part_type_shape(exp_part1,pt_shape_disk);
	part_system_depth(exp_part1,-1);
	part_type_scale(exp_part1,size1,size1);

	part_type_color2(exp_part1,col,c_white);
	part_type_size(exp_part1,min_size,max_size,shrink_spd1,0);
	part_type_speed(exp_part1,min_spd,max_spd,-1,10);

	part_type_direction(exp_part1,dir,dir,0,0);
	//part_type_gravity(exp_part1,0.01,90);
	part_type_life(exp_part1,min_life,max_life);

	//part 2
	part_type_shape(exp_part2,pt_shape_disk);
	part_system_depth(exp_part2,1);
	part_type_scale(exp_part2,size2,size2);

	part_type_color1(exp_part2,c_gray);
	part_type_size(exp_part2,min_size,max_size,shrink_spd2,0);
	part_type_speed(exp_part2,min_spd,max_spd,-1,0);

	part_type_direction(exp_part2,dir,dir,0,0);
	//part_type_gravity(exp_part2,0.01,90);
	part_type_life(exp_part2,min_life,max_life);

	//emit
	part_system_position(exp_syst, xx, yy);
	part_emitter_region(exp_syst,exp_emit,x-20,x+20,y-20,y+20,ps_shape_rectangle,ps_distr_gaussian);
	part_emitter_burst(exp_syst,exp_emit,exp_part2,num);
	part_emitter_burst(exp_syst,exp_emit,exp_part1,num);



}
