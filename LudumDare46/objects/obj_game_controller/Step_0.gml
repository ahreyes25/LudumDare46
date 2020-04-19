if (paused) {
	if (keyboard_check_pressed(ord("R")))
		level_restart();
	if (keyboard_check_pressed(ord("F")))
		window_set_fullscreen(!window_get_fullscreen());
	if (keyboard_check_pressed(ord("M")))
		global.sound_mult = !global.sound_mult;
		
	merchant_hide();
	shop_hide();
	inventory_hide();
	library_hide();
}
if (keyboard_check_pressed(vk_escape))
	paused = !paused;