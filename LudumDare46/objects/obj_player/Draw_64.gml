// Draw Boat GUI
if (defined(rod) && !defined(rod.lure) && !defined(meter)) {
	depth = obj_ui_controller.depth - 1;
	
	var _sw = surface_get_width(application_surface);
	var _sh = surface_get_height(application_surface);
	
	boat_x	= _sw / 2;
	boat_y	= _sh - (sprite_get_height(spr_boat_side) * boat_scale) / 2;
	boat_r  = sin(boat_bob_iter) * 3;
	boat_y += sin(boat_bob_iter) * 5;
	wave_y  = (boat_y + sin(boat_bob_iter + 100) * -10) - 10;
	wave_r  = sin(boat_bob_iter) * 0.2;
	
	// Draw Boat
	draw_sprite_ext(spr_boat_side, 0, boat_x, boat_y, boat_scale, boat_scale, boat_r, global.tint_color, 1);
	draw_sprite_ext(spr_player_still, 0, boat_x - 30, boat_y - 10, boat_scale / 2, boat_scale / 2, boat_r, global.tint_color, 1);
	draw_sprite_ext(global.rod_data[obj_game_controller.player_rod_type, RP.SPRITE], 0, boat_x + 10, boat_y - 30, boat_scale / 2, boat_scale / 2, boat_r, global.tint_color, 1);
	if (sad)
		draw_sprite_ext(spr_emoji_sad_1, 0, boat_x - 30, boat_y - 10 - 60, 1, 1, 0, global.tint_color, emoji_fade);
	if (happy)
		draw_sprite_ext(spr_emoji_happy_1, 0, boat_x - 30, boat_y - 10 - 60, 1, 1, 0, global.tint_color, emoji_fade);
}


with (obj_ui_controller) {
	// Edge Arrows
	if (exists(obj_player) && !defined(obj_player.rod.lure)) {
		var _ww = surface_get_width(bg_surface);
		var _wh = surface_get_height(bg_surface);
		var _aw = sprite_get_width(spr_arrow_down) / 2;
		var _ah = sprite_get_height(spr_arrow_down) / 2;
		draw_sprite_ext(spr_arrow_up, 0, _ww / 2, _ah + sin(arrow_iter), image_xscale, image_yscale, image_angle, global.tint_color, image_alpha);
		draw_sprite_ext(spr_arrow_right, 0, _ww - outer_edge_width - inner_edge_width - _aw - sin(arrow_iter), _wh / 2, image_xscale, image_yscale, image_angle, global.tint_color, image_alpha);
		draw_sprite_ext(spr_arrow_left, 0, outer_edge_width + inner_edge_width + _aw + sin(arrow_iter), _wh / 2, image_xscale, image_yscale, image_angle, global.tint_color, image_alpha);
		draw_sprite_ext(spr_arrow_down, 0, _ww / 2, _wh - _ah - sin(arrow_iter), image_xscale, image_yscale, image_angle, global.tint_color, image_alpha);
	}
}










