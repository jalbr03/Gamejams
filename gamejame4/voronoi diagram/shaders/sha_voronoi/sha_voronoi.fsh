//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 uvs;
uniform int num_of_points;
uniform float points[4090];//max points*2

void main()
{
	gl_FragColor.a = texture2D(gm_BaseTexture, v_vTexcoord).a;
	if(gl_FragColor.a > 0.0){
		vec2 pos = (v_vTexcoord - uvs.xy) * uvs.zw;
		float closestpoint = 10.0;
		float value1;
		float value2;
		float asdf = points[0];
	
		for(int i=0;i<num_of_points;i++){
			float len = pow(pow(points[i*2]-pos.x,2.0) + pow(points[i*2+1]-pos.y,2.0),2.0);
			if(len < closestpoint){
				closestpoint = len;
				value1 = float(i+1);
				value2 = mod(value1,2.0);
			}
		}
	
		gl_FragColor.rgb += vec3(value1/float(num_of_points),
								 value2,
								 (value1+value2)/2.0);
	}
}










//for(int i=0;i<num_of_points;i++){
	//	//float len = pow(pow(points[i*2]-pos.x,2.0) + pow(points[i*2+1]-pos.y,2.0),2.0);
	//	//if(pos.y-points[i*2+1] < 0.01 && pos.y-points[i*2+1] > -0.01){
	//	//	gl_FragColor.rgb = vec3(1.0,0.0,0.0);
	//	//}
	//	//if(pos.y < 0.5){
	//	//	gl_FragColor.rgb = vec3(0.0,0.0,1.0);
	//	//}
	//	//if(pos.y < points[i*2+1]+0.01 && pos.y > points[i*2+1]-0.01){
	//	//	gl_FragColor.rgb = vec3(1.0,0.0,0.0);
	//	//}
	//	//if(pos.x < points[i*2]+0.01 && pos.x > points[i*2]-0.01){
	//	//	gl_FragColor.rgb = vec3(1.0,0.0,0.0);
	//	//}
	//	//if(pos.y*3.5 < 0.1+0.01 && pos.y*3.5 > 0.1-0.01){
	//	//	gl_FragColor.rgb = vec3(0.0,1.0,0.0);
	//	//}
	//	//if(pos.x < 0.1+0.01 && pos.x > 0.1-0.01){
	//	//	gl_FragColor.rgb = vec3(0.0,1.0,0.0);
	//	//}
	//	if(closestpoint==0.0){
	//		closestpoint = 0.0;
	//		value1 = float(i+1);
	//		value2 = mod(value1,2.0);
	//	}
	//}