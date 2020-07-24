instance_destroy(other);
instance_create_depth(x,y,-1,obj_power_up_grab);
audio_play_sound(snd_shoot,2,0);
instance_destroy(self);