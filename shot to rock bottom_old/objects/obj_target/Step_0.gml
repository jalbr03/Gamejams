x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y = clamp(y, sprite_height/2, room_height - sprite_height/2);
var move_h = gamepad_axis_value(controller_number, gp_axislh);
var move_v = gamepad_axis_value(controller_number, gp_axislv);
image_alpha = 1+(cos(animate)/2);
animate += 0.1;
x += move_h*spd;
y += move_v*spd;