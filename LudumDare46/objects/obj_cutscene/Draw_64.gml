draw_set_halign(fa_center);
draw_set_valign(fa_center);
var _sw = surface_get_width(application_surface);
var _sh = surface_get_height(application_surface);
switch (room) {
	case rm_forest_0:
		draw_text(_sw / 2, _sh / 2 + sin(bob_iter) * 2, "This Pond looks a little smaller than it did last time...");
		break;
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);