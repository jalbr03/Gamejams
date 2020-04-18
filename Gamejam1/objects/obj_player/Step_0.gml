if (keyboard_check(ord("W"))) y -= 5;
if (keyboard_check(ord("A"))) x -= 5;
if (keyboard_check(ord("S"))) y += 5;
if (keyboard_check(ord("D"))) x += 5;

image_angle = point_direction(x, y, mouse_x, mouse_y)


x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y = clamp(y, sprite_height/2, room_height - sprite_height/2);