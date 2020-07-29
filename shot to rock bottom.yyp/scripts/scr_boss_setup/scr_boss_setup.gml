// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boss_setup(){
	enum boss_abilities{
		all_sides,
		top,
		corners,
		sidel,
		sider,
		big_boy,
		spikewall_builder,
		wall,
	}
	ability_array[boss_abilities.all_sides] = scr_all_sides;
	ability_array[boss_abilities.top] = scr_top;
	ability_array[boss_abilities.corners] = scr_4_shot_corners;
	ability_array[boss_abilities.sidel] = scr_sidel;
	ability_array[boss_abilities.sider] = scr_sider;
	ability_array[boss_abilities.big_boy] = scr_big_boy;
	ability_array[boss_abilities.spikewall_builder] = scr_spikewall_builder;
	ability_array[boss_abilities.wall] = scr_wall;
	ability_state = -1;
	
	ability_group1 = [boss_abilities.top, boss_abilities.all_sides, boss_abilities.sidel, boss_abilities.sider];
	groups = [ability_group1];
	
}