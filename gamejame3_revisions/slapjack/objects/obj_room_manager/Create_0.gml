try{
	global.money = highscore_name("money");
	global.save = false;
}catch(_exception){
	global.money = 0;
	global.save = false;
	print(_exception);
}