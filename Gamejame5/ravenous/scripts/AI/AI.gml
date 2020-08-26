// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_machine(initial_state) constructor{
	current_state = initial_state;
	current_state.enter();
	
	function step(){
		current_state.ex_step();
		current_state.step();
		current_state.end_step();
	}
	
	function transition(new_state){
		current_state = new_state;
		current_state.enter();
	}
}

function state() constructor{
	static spd = 100;
	static bounce_dist = 10;
	static img_scale = other.image_xscale;
	static inrange = false;
	function enter(){
		
	}
	
	function step(){
		
	}
	
	function ex_step(){
		img_scale = other.image_xscale;
		inrange = AI_check_insight(other, other.seeing_rad/3, other.seeing_rad);
	}
	function end_step(){
		other.image_xscale = img_scale;
	}
}

function AI_check_insight(other_id, min_dist, max_dist){
	var dist = -1;
	if(instance_exists(obj_player)){
		dist = point_distance(obj_player.x,obj_player.y,other_id.x,other_id.y);
		
		if(dist <= min_dist){
			with(other){
				stateMachine.transition(states.run);
			}
			return true;
		}else if(dist <= max_dist){
			with(other){
				stateMachine.transition(states.attack);
			}
			return true;
		}else{
			return false;
		}
	}
}

function AI_idle(): state() constructor{
	function enter(){
		other.image_index = other.img_idle_body;
		other.arms = other.img_idle_arms;
	}
	function step(){
		var switch_to = irandom(100);
		if(switch_to = 0){
			with(other){
				stateMachine.transition(states.walk);
			}
		}
	}
}

function AI_walk(): state() constructor{
	
	function enter(){
		other.image_index = other.img_walk_body;
		other.arms = other.img_walk_arms;
		img_scale = choose(1,-1);
	}
	
	function step(){
		other.phy_linear_velocity_x = spd*img_scale;
		var is_wall = collision_line(other.x+bounce_dist*img_scale,other.y,
									 other.x+bounce_dist*img_scale,other.y+other.sprite_height,obj_static,0,1);
		if(!is_wall){
			img_scale *= -1;
		}
		
		var switch_to = irandom(100);
		if(switch_to = 0){
			with(other){
				stateMachine.transition(states.idle);
			}
		}
	}
}

function AI_run(): state() constructor{
	function enter(){
	
	}
	function step(){
		var point_away_from_player = 0;
		if(instance_exists(obj_player)){
			point_away_from_player = sign(other.x-obj_player.x);
			//print(point_away_from_player);
		}
		img_scale = point_away_from_player;
		
		other.phy_linear_velocity_x = 1.5*spd*img_scale;
		
	}
}

function AI_attack(): state() constructor{
	function enter(){
	
	}
	function step(){
		var point_away_from_player = 0;
		if(instance_exists(obj_player)){
			
			point_away_from_player = sign(other.x-obj_player.x);
		}
		print(point_away_from_player)
		var is_wall = collision_line(other.x+bounce_dist*img_scale,other.y,
									 other.x+bounce_dist*img_scale,other.y+other.sprite_height,obj_static,0,1);
		img_scale = point_away_from_player;
		if(is_wall){
			other.phy_linear_velocity_x = spd*img_scale;
		}else{
			other.phy_linear_velocity_x = 0;
		}
		
		if(!inrange){
			with(other){
				stateMachine.transition(states.idle);
			}
		}
	}
}
