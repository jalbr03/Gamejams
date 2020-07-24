var player = instance_create_layer(x,y,layer,obj_player_droping);
player.controller_number = controller_number;
player.image_blend = image_blend;
player.player_id = player_id;
instance_destroy(self);