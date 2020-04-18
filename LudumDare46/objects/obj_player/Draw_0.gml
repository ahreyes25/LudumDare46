if (defined(rod) && defined(rod.launched_x) && defined(rod.launched_y)) {
	draw_sprite_ext(wave_sprite, 0, rod.launched_x, rod.launched_y, boat_scale, boat_scale, wave_r, c_white, 1);
	draw_sprite_ext(spr_boat_side, 0, rod.launched_x, rod.launched_y, boat_scale, boat_scale, boat_r, c_white, 1);
}