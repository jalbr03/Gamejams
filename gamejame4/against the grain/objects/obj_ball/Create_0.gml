vspd = random_range(-2,2);
hspd = random_range(-2,2);
creator = noone;
angle = 0;
number = 0;
camera = view_camera[0];
camw = view_get_wport(0) - dist*2;
camh = view_get_hport(0) - dist*2;
camx = camera_get_view_x(camera);
camy = camera_get_view_y(camera);

orbital = function(_x,_y,_angle) constructor{
	x = _x;
	y = _y;
	angle = _angle;
}
global.orbit = new orbital(x,y,0);

alarm[0] = 1;