if(other.attacker != self){
	hp -= other.damage;
	instance_destroy(other);
}