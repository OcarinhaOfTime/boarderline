shader_type canvas_item;
uniform float size = 2;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	vec2 uv = fract(UV * size / 2.);
	float a = step(uv.x, .5) * step(.5, uv.y) + step(uv.y, .5) * step(.5, uv.x);
	COLOR.xyz = vec3(a);
	COLOR.a = 1.;
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
