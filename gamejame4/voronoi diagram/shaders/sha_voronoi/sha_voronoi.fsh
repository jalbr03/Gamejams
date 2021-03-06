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
		float closestpoint = 1000.0;
		float value1;
		float value2;
		float asdf = points[0];
	
		for(int i=0;i<num_of_points;i++){
			float len = pow(pow(points[i*2]-pos.x,2.0) + pow(points[i*2+1]-pos.y,2.0),2.0);
			if(len/10.0 < closestpoint){
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
