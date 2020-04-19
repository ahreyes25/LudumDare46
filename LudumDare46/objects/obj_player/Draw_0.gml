if (defined(rod) && defined(rod.launched_x) && defined(rod.launched_y)) {
	draw_sprite_ext(wave_sprite, 0, rod.launched_x, rod.launched_y, boat_scale, boat_scale, wave_r, global.tint_color, 1);
	draw_sprite_ext(spr_boat_side, 0, rod.launched_x, rod.launched_y, boat_scale, boat_scale, boat_r, global.tint_color, 1);
	draw_sprite_ext(spr_player_still, 0, rod.launched_x - 30, rod.launched_y - 10, boat_scale / 2, boat_scale / 2, boat_r, global.tint_color, 1);
}