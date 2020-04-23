if(other.attacker == "good" && can_be_attacked){
	hp -= other.damage;
	can_be_attacked = false;
	alarm[1] = 30;
	if(hp <= 0 && !is_dead){
		drop_money = true;
		is_dead = true;
		state = baddie_states.dead;
	}
}