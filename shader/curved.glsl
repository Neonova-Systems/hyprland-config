precision highp float;
varying highp vec2 v_texcoord;
uniform highp sampler2D tex;

const float VIB_VIBRANCE = 0.25; // Edit this value
const vec3 VIB_RGB_BALANCE = vec3(1.0, 1.0, 1.0);
const vec3 VIB_coeffVibrance = VIB_RGB_BALANCE * -VIB_VIBRANCE;
vec4 applyVibrance(vec4 pixColor) { // see https://github.com/CeeJayDK/SweetFX/blob/a792aee788c6203385a858ebdea82a77f81c67f0/Shaders/Vibrance.fx#L20-L30
    vec3 color = vec3(pixColor[0], pixColor[1], pixColor[2]); // RGB

    // vec3 VIB_coefLuma = vec3(0.333333, 0.333334, 0.333333); // was for `if VIB_LUMA == 1`
    vec3 VIB_coefLuma = vec3(0.212656, 0.715158, 0.072186); // try both and see which one looks nicer.
    float luma = dot(VIB_coefLuma, color);

    float max_color = max(color[0], max(color[1], color[2]));
    float min_color = min(color[0], min(color[1], color[2]));
    float color_saturation = max_color - min_color;

    vec3 p_col = vec3(vec3(vec3(vec3(sign(VIB_coeffVibrance) * color_saturation) - 1.0) * VIB_coeffVibrance) + 1.0);
    pixColor[0] = mix(luma, color[0], p_col[0]);
    pixColor[1] = mix(luma, color[1], p_col[1]);
    pixColor[2] = mix(luma, color[2], p_col[2]);

    return pixColor;
}

#define STRENGTH 0.0010
vec4 applyChromaticAberration() {
    vec2 center = vec2(0.5, 0.5);
    vec2 offset = (v_texcoord - center) * STRENGTH;

    float rSquared = dot(offset, offset);
    float distortion = 1.0 + 1.0 * rSquared;
    vec2 distortedOffset = offset * distortion;

    vec2 redOffset = vec2(distortedOffset.x, distortedOffset.y);
    vec2 blueOffset = vec2(distortedOffset.x, distortedOffset.y);

    vec4 redColor = texture2D(tex, v_texcoord + redOffset);
    vec4 blueColor = texture2D(tex, v_texcoord + blueOffset); 
    return vec4(redColor.r, texture2D(tex, v_texcoord).g, blueColor.b, 1.0);
}

void main() {
	vec2 tc = vec2(v_texcoord.x, v_texcoord.y); // Get texture screen

	// Call calculate distance from the center, 0.0 - 1.0
    float dx1 = abs(0.3-tc.x);
    float dx2 = abs(0.5-tc.x);
    float dx3 = abs(0.7-tc.x);
	// float dy1 = abs(0.2-tc.y);
	// float dy2 = abs(0.8-tc.y);
	// float dy3 = abs(0.5-tc.y);

	// Square it to smooth the edges
	dx1 *= 0.01;
    dx2 *= 0.9;
    dx3 *= 0.01;

	tc.x -= 0.5; // Masking
    tc.x *= 1.0; // tc.x *= 1.0 + (dy1 * -0.02) + (dy2 * -0.02) + (dy3 * -0.04);
	tc.x += 0.5; // Masking

	tc.y -= 0.5; // Masking
	tc.y *= 1.0 + (dx1 * -0.1) + (dx2 * -0.02) + (dx3 * -0.1);
	tc.y += 0.5; // Masking

    vec4 cta = texture2D(tex, vec2(tc.x, tc.y)); // Get texel
	// cta.rgb += sin(tc.y * 1250.0) * 0.02; // add scanline effect
    // cta += applyChromaticAberration();

    gl_FragColor = applyVibrance(cta); // Apply
}
