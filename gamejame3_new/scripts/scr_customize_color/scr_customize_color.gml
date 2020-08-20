function scr_customize_color() {
#region presses
	var leftIsPressed   = gamepad_button_check        (self.controller_id, gp_padl)||gamepad_axis_value(self.controller_id,gp_axislh)<0;
	var rightIsPressed  = gamepad_button_check        (self.controller_id, gp_padr)||gamepad_axis_value(self.controller_id,gp_axislh)>0;
	var upWasPressed    = gamepad_button_check_pressed(self.controller_id, gp_padu)||gamepad_axis_value(self.controller_id,gp_axislv)<0;
	var downWasPressed  = gamepad_button_check_pressed(self.controller_id, gp_padd)||gamepad_axis_value(self.controller_id,gp_axislv)>0;
	var select          = gamepad_button_check_pressed(self.controller_id, gp_face1);
	var quitWasPressed  = gamepad_button_check_pressed(self.controller_id, gp_face2);
#endregion
#region creat sliders
	if(sliderR == noone || sliderG == noone || sliderB == noone){
		scr_customize_creat_sliders();
	}else{
#endregion
#region slider
		if(rightIsPressed ^ leftIsPressed){
			//moving the slider
			var changevalue = rightIsPressed-leftIsPressed;
			if(current_select = 0){
				sliderR.value += changevalue/100;
				sliderR.value = clamp(sliderR.value, 0, sliderR.max_value);
			}else if(current_select == 1 || current_select == -2){
				sliderG.value += changevalue/100;
				sliderG.value = clamp(sliderG.value, 0, sliderG.max_value);
			}else if(current_select == 2 || current_select == -1){
				sliderB.value += changevalue/100;
				sliderB.value = clamp(sliderB.value, 0, sliderB.max_value);
			}
#endregion
#region select up and down
		}else if((downWasPressed ^ upWasPressed) && !axis_used){
			var selectIndex = downWasPressed-upWasPressed;
			current_select = (current_select + selectIndex)%4;
		}
		if(current_select == 0){
				sliderR.sprite_index = spr_slider_bar_selected;
				sliderG.sprite_index = spr_slider_bar;
				sliderB.sprite_index = spr_slider_bar;
				done.image_index = 0;
			}else if(current_select == 1 || current_select == -3){
				sliderR.sprite_index = spr_slider_bar;
				sliderG.sprite_index = spr_slider_bar_selected;
				sliderB.sprite_index = spr_slider_bar;
				done.image_index = 0;
			}else if(current_select == 2 || current_select == -2){
				sliderR.sprite_index = spr_slider_bar;
				sliderG.sprite_index = spr_slider_bar;
				sliderB.sprite_index = spr_slider_bar_selected;
				done.image_index = 0;
			}else if(current_select == 3 || current_select == -1){
				sliderR.sprite_index = spr_slider_bar;
				sliderG.sprite_index = spr_slider_bar;
				sliderB.sprite_index = spr_slider_bar;
				done.image_index = 1;
			}
		image_blend = make_color_rgb(sliderR.value*255,sliderG.value*255,sliderB.value*255)
#endregion
#region done
		if(current_select == 3 || current_select == -1){
			if(select){
				current_select = 0;
				state = customstates.player_done;
				if(sliderR != noone || sliderG != noone || sliderB != noone || cursor != noone || donebutton != noone){
					scr_customize_destroy_sliders();
				}
			}
		}
	}
#endregion
#region if you press B take the player out
	if(quitWasPressed){
		self.controller_id = -1; //taking out controller id
		obj_multiplayer_start.number_of_players--;
		selected = false; //go back to image waiting for input
		current_select = 0; //resetting the select for the sliders
		image_blend = make_color_rgb(255,255,255); //setting the color back to 0
		image_speed = self.imgspd;//reset image speed
		state = customstates.join;
		scr_customize_destroy_sliders();
	}
#endregion
	if(upWasPressed || downWasPressed){
		axis_used = true;
	}else{
		axis_used = false;
	}



}
