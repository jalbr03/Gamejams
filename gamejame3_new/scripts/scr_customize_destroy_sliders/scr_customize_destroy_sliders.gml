function scr_customize_destroy_sliders() {
	instance_destroy(sliderR);
	instance_destroy(sliderG);
	instance_destroy(sliderB);
	instance_destroy(cursor);
	instance_destroy(done);
	sliderR = noone;
	sliderG = noone;
	sliderB = noone;
	cursor = noone;
	donebutton = noone



}
