shader_type canvas_item;

uniform float speed = 0.5;
uniform float dir_x : hint_range(-1.0, 1.0, 0.0);
uniform float dir_y : hint_range(-1.0, 1.0, 0.0);

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	vec2 direction = vec2(dir_x, dir_y);
	COLOR = texture(TEXTURE, UV + (direction * TIME * speed));
}

void light() {
	// Called for every pixel for every light affecting the CanvasItem.
}
