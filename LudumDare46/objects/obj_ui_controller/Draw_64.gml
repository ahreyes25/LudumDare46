draw_set_font(-1);

if (room != rm_title) {
	var _sw = surface_get_width(application_surface);
	var _sh = surface_get_height(application_surface);
	
	boat_x	= _sw / 2;
	boat_y	= _sh - (sprite_get_height(spr_boat_side) * boat_scale) / 2;
	boat_r  = sin(boat_bob_iter) * 3;
	boat_y += sin(boat_bob_iter) * 5;
	wave_r  = sin(boat_bob_iter) * 0.2;
	
	if (!defined(wave_surface) || !surface_exists(wave_surface))
		wave_surface = surface_create(_sw, _sh - boat_y - 30);
	
	// Draw Waves
	surface_set_target(wave_surface);
	draw_clear_alpha(c_black, 0);
	var _wave_scale = 2;
	var _ww = sprite_get_width(spr_wave_ui);
	for (var i = 0; i < _sw; i += _ww * _wave_scale)
		draw_sprite_ext(spr_wave_ui, 0, i, 0, _wave_scale, _wave_scale, 0, c_white, 1);
	
	surface_reset_target();
	
	if (!defined(wave_sprite))
		wave_sprite = sprite_create_from_surface(wave_surface, 0, 0, _sw, surface_get_height(wave_surface), 0, 0, _sw / 2, surface_get_height(wave_surface));
	
	draw_set_color(c_black);
	draw_rectangle(0, wave_y - sprite_get_height(wave_sprite) * boat_scale + 30, _sw, _sh, false);
	draw_set_color(global.tint_color);
	draw_sprite_ext(wave_sprite, _sw / 2, 0, wave_y, boat_scale, boat_scale, wave_r, global.tint_color, 1);
}

// HUD Surface
if (!surface_exists(bg_surface))
	bg_surface = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));

var _ww = surface_get_width(bg_surface);
var _wh = surface_get_height(bg_surface);

draw_set_color(c_black);
draw_set_alpha(1.0);
draw_rectangle(0, 0, outer_edge_width, _wh, false);
draw_rectangle(_ww - outer_edge_width, 0, _ww, _wh, false);

surface_set_target(bg_surface);

image_speed = 0.1;
draw_sprite_tiled_ext(spr_background_scroll, image_index, 0, 0, 1, 1, global.tint_color, 0.5);

// Inner Edge
draw_rectangle(outer_edge_width, 0, outer_edge_width + inner_edge_width, _wh, false);
draw_rectangle(_ww - outer_edge_width - inner_edge_width, 0, _ww - outer_edge_width, _wh, false);
draw_set_color(global.tint_color);
draw_rectangle(outer_edge_width, 0, outer_edge_width + inner_edge_width, _wh, true);
draw_rectangle(_ww - outer_edge_width - inner_edge_width, 0, _ww - outer_edge_width, _wh, true);

gpu_set_blendmode(bm_subtract);
draw_rectangle(outer_edge_width + inner_edge_width + 1, 0, _ww - outer_edge_width - inner_edge_width - 1, _wh, false);
gpu_set_blendmode(bm_normal);

surface_reset_target();

draw_surface(bg_surface, 0, 0);






















