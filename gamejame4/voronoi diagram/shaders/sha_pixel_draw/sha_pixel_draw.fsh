//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform int num_of_points;
uniform float points[4090];//max points*2

void main()
{
	gl_FragColor.a = texture2D(gm_BaseTexture, v_vTexcoord).a;
	
	float closestpoint = 10000.0;
	float value1;
	float value2;
	for(int i=0;i<num_of_points;i++){
		float len = pow(pow(points[i*2]-v_vTexcoord.x,2.0) + pow(points[i*2+1]-v_vTexcoord.y,2.0),10.0);
		if(len < closestpoint){
			closestpoint = len;
			value1 = float(i+1);
			value2 = mod(value1,2.0);
		}
	}
	
	gl_FragColor.rgb = vec3(value1/float(num_of_points),value2,(value1+value2)/2.0);
	
}