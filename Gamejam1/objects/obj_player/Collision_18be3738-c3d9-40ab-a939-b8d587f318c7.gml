if(other.attacker != self){
	hp -= other.damage;
	print(hp)
	instance_destroy(other);
}