new_game = !file_exists(global.save_filename);

// SAVE GAME
if (!loading) {
	if (room == rm_forest || room == rm_desert || room == rm_glacier || room == rm_ocean) {
		if (CURRENT_TIME_FRAME != 0 && CURRENT_TIME_FRAME mod 60 * 10)
			save_game();
	}
}

if (paused) {
	if (keyboard_check_pressed(ord("R")))
		level_restart();
	if (keyboard_check_pressed(ord("F")))
		window_set_fullscreen(!window_get_fullscreen());
	if (keyboard_check_pressed(ord("M"))) {
		global.sound_mult = !global.sound_mult;
		audio_master_gain(global.sound_mult);
	}
	if (keyboard_check_pressed(ord("E"))) {
		room_transition(rm_title);
		paused = false;
	}
	if (keyboard_check_pressed(ord("Q"))) {
		room_transition(rm_outro_0);
		paused = false;	
	}
		
	merchant_hide();
	shop_hide();
	inventory_hide();
	library_hide();
}
if (keyboard_check_pressed(vk_escape)) {
	merchant_hide();
	shop_hide();
	inventory_hide();
	library_hide();
	last_region = room_to_region();
	room_transition(rm_title);
}
	
var _g = keyboard_check(ord("G"));
var _e = keyboard_check(ord("E"));
var _n = keyboard_check(ord("N"));
var _t = keyboard_check(ord("T"));
var _o = keyboard_check(ord("O"));
if (_g && _e && _n && _t && _o) {
	obj_sidebar_left.money += 1000;
	sfx_play(sfx_purchase);
}






