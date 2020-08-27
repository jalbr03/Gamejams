//saving
highscore_clear();
highscore_add("player posex",x);
highscore_add("player posey",y);

var ball = instance_create_layer(x,y,"menu",obj_ball);
ball.center = true;