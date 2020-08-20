/// @description draw the slider
draw_self();
draw_sprite_part(sprite_index, 1, 0, 0, sprite_width*value, sprite_height, x, y-sprite_get_yoffset(sprite_index));
draw_sprite_ext(sprite_index,1,x,y,(sprite_width/200)*value,sprite_height/8,0,self_color,1);

draw_sprite(spr_slider_button, 0, x+sprite_width*value, y);