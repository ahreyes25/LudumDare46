if (mouse_check_button_pressed(mb_left) && state != "leave")
	state = "leave";
	
xscale = lerp(xscale, xscale_target, 0.2);

if (abs(xscale - xscale_target) <= 0.05 && !flashed) {
	//camera_set_screen_flash(0.5);
	camera_set_screen_shake();
	camera_reset_zoom_factor();
	sfx_play(sfx_card_reveal);
	flashed = true;
}

if (state == "leave") {
	var _sh = surface_get_height(surface);
	surf_y = lerp(surf_y, surf_y + _sh, 0.1);
	
	if (alarm[0] == -1) {
		alarm[0] = 30;
		sfx_play(sfx_card_leave);
	}
}