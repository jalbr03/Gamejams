if(other.attacker == "bad"){
	hp -= other.damage;
	print(hp)
	instance_destroy(other);
}