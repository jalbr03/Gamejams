#region states
enum baddie_states{
	dead,
	move,
	attack
}
states[baddie_states.dead] = scr_baddie_dead;
states[baddie_states.move] = scr_baddie_move;
states[baddie_states.attack] = scr_baddie_attack;
state = baddie_states.move;
#endregion
image_speed = 1;
drop_money = false;
is_dead = false;
spd = 3;
hpbar = 100/hp;
maxtime = 10;
timer = maxtime;
attack_dist = 10;
can_be_attacked = true;