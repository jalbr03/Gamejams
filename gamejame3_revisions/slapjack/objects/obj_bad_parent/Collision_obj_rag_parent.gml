if(!hit){
	physics_joint_weld_create(self,other,x,y,0,10,10000,false);
	hit = true;
	global.money += hit_value;
}