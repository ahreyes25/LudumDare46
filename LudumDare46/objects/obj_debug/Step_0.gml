// Pause Game
debug = keyboard_check(vk_escape);
show_debug_overlay(debug);

// Debug/ Pause Menu
if (debug) {
	if (keyboard_check_pressed(ord("R")))									room_restart();
	if (keyboard_check_pressed(vk_right) && !keyboard_check(ord("H")))		room_goto_next();
	if (keyboard_check_pressed(vk_left)  && !keyboard_check(ord("H")))		room_goto_previous();
	if (keyboard_check_pressed(ord("G")))									global.god_mode = !global.god_mode;
	if (keyboard_check_pressed(ord("F")))									window_set_fullscreen(!window_get_fullscreen());
	if (keyboard_check_pressed(ord("S")))									show_states = !show_states;
	if (keyboard_check_pressed(ord("W"))) {
		show_solids	= !show_solids;
		layer_set_visible(layer_get_id("Collisions"), show_solids);
	}
	
	// Sound Toggle
	if (keyboard_check_pressed(ord("M"))) {
		global.sound_mult = !global.sound_mult;
		audio_master_gain(global.sound_mult);
	}
}