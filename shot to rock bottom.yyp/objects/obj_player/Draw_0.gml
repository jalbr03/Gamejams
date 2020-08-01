change_light(0.1);
draw_self();
if(state == player_states.level){
	switch(player_number){
		case(1):
			draw_sprite_ext(spr_recharge,0,x,y,xscale,yscale,animate*10,c_white,(!cool_down/2)+!cool_down*clamp(cos(animate),0,1));
			break;
		case(2):
			draw_healthbar(x-15,y-20,x+15,y-10,(special_power/max_special_power)*100,c_black,c_red,c_yellow,0,1,1);
			break;
		case(3):
			draw_healthbar(x-15,y-20,x+15,y-10,(sanity/max_sanity)*100,c_black,c_white,c_red,0,1,1);
			break;
	}
}
