/// @description drawing
if(place_meeting(x-cursor_accelerationx*10,y-cursor_accelerationy*10,creator) && 
x < creator.x+creator.sprite_width/2 && x > creator.x-creator.sprite_width/2 &&
y < creator.y+creator.sprite_height/2 && y > creator.y-creator.sprite_height/2){
	paint = instance_create_depth(x,y,depth,obj_paint);
	paint.creator = id;
	paint.image_blend = image_blend;
	depth = -2-(instance_number(obj_paint))*0.1;
}