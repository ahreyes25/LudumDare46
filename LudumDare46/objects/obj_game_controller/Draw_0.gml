if (!surface_exists(lure_surface))
	lure_surface = surface_create(room_width, room_height);

surface_set_target(lure_surface);

if (need_to_clear_surface) {
	draw_clear_alpha(c_black, 0);
	need_to_clear_surface = false;
}

surface_reset_target();
draw_surface(lure_surface, 0, 0);