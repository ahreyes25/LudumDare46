bob_iter += bob_iter_speed;
tile_x += tile_speed;

if (tile_x >= surface_get_width(application_surface) - sprite_get_width(spr_banner) * 0.5)
	tile_x = 85;