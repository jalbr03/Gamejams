if(other.attacker == "good"){
	hp -= other.damage;
	instance_destroy(other);
	if(hp <= 0) instance_destroy(self);
}