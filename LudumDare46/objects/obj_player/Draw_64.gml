// Draw Boat GUI
if (defined(rod) && !defined(rod.lure) && !defined(meter)) {
	
	var _sw = surface_get_width(application_surface);
	var _sh = surface_get_height(application_surface);
	
	boat_x	= _sw / 2;
	boat_y	= _sh - (sprite_get_height(spr_boat_side) * boat_scale) / 2;
	boat_r  = sin(boat_bob_iter) * 3;
	boat_y += sin(boat_bob_iter) * 5;
	wave_y  = (boat_y + sin(boat_bob_iter + 100) * -10) - 10;
	wave_r  = sin(boat_bob_iter) * 0.2;
	
	if (!defined(wave_surface) || !surface_exists(wave_surface))
		wave_surface = surface_create(_sw, _sh - boat_y - 30);
	
	// Draw Waves
	surface_set_target(wave_surface);
	draw_clear_alpha(c_black, 0);
	var _wave_scale = 2;
	var _ww = sprite_get_width(spr_wave_ui);
	for (var i = 0; i < _sw; i += _ww * _wave_scale)
		draw_sprite_ext(spr_wave_ui, 0, i, 0, _wave_scale, _wave_scale, 0, global.tint_color, 1);
	
	surface_reset_target();
	
	if (!defined(wave_sprite))
		wave_sprite = sprite_create_from_surface(wave_surface, 0, 0, _sw, surface_get_height(wave_surface), 0, 0, _sw / 2, surface_get_height(wave_surface));
	
	draw_set_color(c_black);
	draw_rectangle(0, wave_y - sprite_get_height(wave_sprite) * boat_scale, _sw, _sh, false);
	draw_set_color(global.tint_color);
	draw_sprite_ext(wave_sprite, _sw / 2, 0, wave_y, boat_scale, boat_scale, wave_r, global.tint_color, 1);
	
	// Draw Boat
	draw_sprite_ext(spr_boat_side, 0, boat_x, boat_y, boat_scale, boat_scale, boat_r, global.tint_color, 1);
	draw_sprite_ext(spr_player_still, 0, boat_x - 30, boat_y - 10, boat_scale / 2, boat_scale / 2, boat_r, global.tint_color, 1);
}













