if(!hit){
	physics_joint_weld_create(self,other,x,y,0,15,2,0);
	hit = true;
	global.money += hit_value;
}