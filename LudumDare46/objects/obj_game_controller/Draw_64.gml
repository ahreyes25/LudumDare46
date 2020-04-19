if (paused) {
	depth = obj_ui_controller.depth - 100;
	var _sw = surface_get_width(application_surface);
	var _sh = surface_get_height(application_surface);
	
	draw_set_color(c_black);
	draw_set_alpha(0.9);
	draw_rectangle(0, 0, _sw, _sh, false);	
	draw_set_color(c_white);
	draw_set_alpha(1.0);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	draw_text(_sw / 2, _sh / 2 - 100, "Press R To Restart Level.");
	draw_text(_sw / 2, _sh / 2 - 80, "-- Your Progress Will Not Be Lost! --");
	draw_text(_sw / 2, _sh / 2 - 40, "Press F To Toggle Fullscreen.");
	draw_text(_sw / 2, _sh / 2 - 0, "Press M To Toggle Sound.");
	draw_set_halign(fa_top);
	draw_set_valign(fa_left);
}