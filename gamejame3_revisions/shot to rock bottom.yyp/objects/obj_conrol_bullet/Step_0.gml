target_x = target.x;
target_y = target.y;
image_angle = point_direction(x,y,target_x,target_y);
x += lengthdir_x(spd,image_angle);
y += lengthdir_y(spd,image_angle);
