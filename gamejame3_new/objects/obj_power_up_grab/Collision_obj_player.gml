other.current_powerup = power_ups[power_up]
var txt = instance_create_depth(x,y,1,obj_floaty_text);
txt.text = power_up_puns[power_up];
instance_destroy(self);