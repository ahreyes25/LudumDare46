if (defined(wave_sprite) && sprite_exists(wave_sprite))
	sprite_delete(wave_sprite);
if (defined(wave_surface) && surface_exists(wave_surface))
	surface_free(wave_surface);