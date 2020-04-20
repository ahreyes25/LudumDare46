if (state == "fade_in" || state == "fade_out") {
	draw_set_alpha(fade);
	draw_set_color(c_black);
	draw_rectangle(0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false);
	draw_set_color(c_white);
	draw_set_alpha(1);
}