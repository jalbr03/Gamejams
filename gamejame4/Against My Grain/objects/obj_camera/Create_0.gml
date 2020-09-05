//window_set_cursor(cr_none);
creator = noone;
window_set_fullscreen(true);
animate = 0;
camera = view_camera[0];

backgrounds = [spr_bg3,spr_bg2,spr_bg1];
bg_alphas = [1,1,1];
bg_transition_spd = 30;

scale = 0.5
bg_xscale = 3000*scale;
bg_yscale = 2000*scale;
bg_offset = (bg_yscale)-camera_get_view_height(camera);
bg_left_overx = (bg_xscale-camera_get_view_width(view_camera[0]));
bg_left_overy = (bg_yscale-camera_get_view_height(view_camera[0]));
