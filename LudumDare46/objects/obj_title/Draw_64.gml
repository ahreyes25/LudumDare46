depth = obj_ui_controller.depth + 1;

var _sw = surface_get_width(application_surface);
var _sh = surface_get_height(application_surface);
	
boat_x	= _sw / 2;
boat_y	= _sh - (sprite_get_height(spr_boat_side) * boat_scale) / 2;
end_y	= _sh / 2;
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
draw_rectangle(0, end_y, _sw, _sh, false);
draw_set_color(global.tint_color);
draw_sprite_ext(wave_sprite, _sw / 2, 0, end_y, boat_scale, boat_scale, wave_r, global.tint_color, 1);
	
// Draw Boat
draw_sprite_ext(spr_boat_side, 0, boat_x, end_y - 40, boat_scale, boat_scale, boat_r, global.tint_color, 1);
draw_sprite_ext(spr_player_still, 0, boat_x - 30, end_y - 50, boat_scale / 2, boat_scale / 2, boat_r, global.tint_color, 1);
draw_sprite_ext(global.rod_data[obj_game_controller.player_rod_type, RP.SPRITE], 0, boat_x + 10, end_y - 70, boat_scale / 2, boat_scale / 2, boat_r, global.tint_color, 1);

// Draw Menu
draw_set_halign(fa_center);
for (var i = 0; i < array_length_1d(menu_options); i++) {
	menu_y = end_y + 50;
	if (menu_index == i)
		draw_text_transformed(boat_x, menu_y + ((string_height("A") * 2) * i) + sin(title_iter) * 10, ">" + string(menu_options[i]), 2, 2, 0);	
	else
		draw_text_transformed(boat_x, menu_y + ((string_height("A") * 2) * i), " " + string(menu_options[i]), 2, 2, 0);	
}
draw_set_halign(fa_left);

// Draw title
draw_sprite_ext(spr_title, 0, _sw / 2, _sh * 0.3, 0.5, 0.5, sin(title_iter) * 10, global.tint_color, 1);


























