varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 u_color;
uniform float u_alpha;

void main()
{
	vec4 tex_color		= texture2D(gm_BaseTexture, v_vTexcoord);
	vec4 solid_color	= vec4(u_color.x / 255.0, u_color.y / 255.0, u_color.z / 255.0, tex_color.a * u_alpha);
    gl_FragColor		= solid_color;
}
