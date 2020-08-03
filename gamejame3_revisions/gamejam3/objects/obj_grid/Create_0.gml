var cell_width = 16;
var cell_height = 16;
var hc = room_width div cell_width;
var vc = room_height div cell_height;

global.grid = mp_grid_create(0,0,hc,vc,cell_width,cell_height);

//add walls
mp_grid_add_instances(global.grid,obj_player,0);
mp_grid_add_instances(global.grid,obj_tail,0);
mp_grid_add_instances(global.grid,obj_wall,0);