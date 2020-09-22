if(Conway){
	choose_to_die();
}else if(smooth){
	smooth_choose_to_die();
}else if(caves && !in_creat){
	SmoothMap();
}else if(pond){
	pond_choose_to_die();
}
