if (!surface_exists(lure_surface))
	lure_surface = surface_create(room_width * 2, room_height * 2);

surface_set_target(lure_surface);

if (need_to_clear_surface) {
	draw_clear_alpha(c_black, 0);
	need_to_clear_surface = false;
}

surface_reset_target();
draw_surface(lure_surface, 0, 0);

var _r = color_get_red(global.tint_color);
var _g = color_get_green(global.tint_color);
var _b = color_get_blue(global.tint_color);
var lay_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);
shader_set(shdr_solid_color);
shader_set_uniform_f(u_color, _r, _g, _b);
shader_set_uniform_f(u_alpha, 1.0);
draw_tilemap(map_id, 0, 0);
shader_reset();