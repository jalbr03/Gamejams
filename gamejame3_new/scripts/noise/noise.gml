function noise(argument0, argument1, argument2) {
	{
	    var X,Y,Z,u,v,w,A,AA,AB,B,BA,BB;
	    X = floor(argument0) & 255;
	    Y = floor(argument1) & 255;
	    Z = floor(argument2) & 255;
	    argument0 -= floor(argument0);
	    argument1 -= floor(argument1);
	    argument2 -= floor(argument2);
	    u = fade(argument0);
	    v = fade(argument1);
	    w = fade(argument2);
	    A  = noiseP[X  ]+Y;
	    AA = noiseP[A  ]+Z;
	    AB = noiseP[A+1]+Z;
	    B  = noiseP[X+1]+Y;
	    BA = noiseP[B  ]+Z;
	    BB = noiseP[B+1]+Z;
	    return lerp(lerp(lerp(grad(noiseP[AA  ], argument0,     argument1,     argument2),
	                          grad(noiseP[BA  ], argument0 - 1, argument1,     argument2),
	                          u),
	                     lerp(grad(noiseP[AB  ], argument0,     argument1 - 1, argument2),
	                          grad(noiseP[BB  ], argument0 - 1, argument1 - 1, argument2),
	                          u),
	                     v),
	                lerp(lerp(grad(noiseP[AA+1], argument0,     argument1,     argument2 - 1),
	                          grad(noiseP[BA+1], argument0 - 1, argument1,     argument2 - 1),
	                          u),
	                     lerp(grad(noiseP[AB+1], argument0,     argument1 - 1, argument2 - 1),
	                          grad(noiseP[BB+1], argument0 - 1, argument1 - 1, argument2 - 1),
	                          u),
	                    v),
	                w);
	}
	noise_init();


}
