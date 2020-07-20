sliderR = instance_create_layer(x-slider_offset/2,y+(spacing*1)+dist_from_obj,layer,obj_slider_rgb_R);
sliderG = instance_create_layer(x-slider_offset/2,y+(spacing*2)+dist_from_obj,layer,obj_slider_rgb_G);
sliderB = instance_create_layer(x-slider_offset/2,y+(spacing*3)+dist_from_obj,layer,obj_slider_rgb_B);
done    = instance_create_layer(x-slider_offset/4,y+(spacing*4)+dist_from_obj,layer,obj_fin);
sliderR.creator = id;
sliderG.creator = id;
sliderB.creator = id;