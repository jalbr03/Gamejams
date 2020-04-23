x += moveH*spd;
y += moveV*spd;
depth = -y-sprite_height/2;
sprite_index = spr_player_walk;
var mouse_side = sign(mouse_x-x);
if(mouse_side != 0) image_xscale = mouse_side;
