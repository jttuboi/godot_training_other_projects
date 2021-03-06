shader_type canvas_item;

void fragment() {
	// SCREEN_TEXTURE/SCREEN_UV GETS INFORMATION OF PIXELS COLOR FROM SCREEN
	// AVG TRANSFORM THE PIXELS COLORS FROM SCREEN IN GREYSCALE
	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV);
	float avg = (COLOR.r + COLOR.g + COLOR.b) / 3.0;
	COLOR.rgb = vec3(avg);
}