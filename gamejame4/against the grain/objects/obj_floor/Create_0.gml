grass_size = 32;
grass_num = sprite_width/grass_size;
animate = 0;
grass_images = 5;
grass_types = ds_list_create();
for(var i=0;i<grass_num;i++){
	ds_list_add(grass_types,random(grass_images-1));
}