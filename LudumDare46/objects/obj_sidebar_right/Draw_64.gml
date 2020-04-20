if (exists(obj_player)) {
	depth = obj_ui_controller.depth - 1;

	var _x = surface_get_width(application_surface) - 
		obj_ui_controller.outer_edge_width - obj_ui_controller.inner_edge_width + 10;
	var _y = 30;

	draw_set_halign(fa_left);
	draw_text(_x, _y, "--Throw Stats--");
	draw_text(_x, _y + 20, "Angle: " + throw_angle);
	draw_text(_x, _y + 40, "Distance: " + throw_distance);
	draw_text(_x, _y + 60, "Target xy: " + target_xy);
	draw_text(_x, _y + 80, "Actual xy: " + actual_xy);
	draw_text(_x, _y + 100, "Rod Innacuracy: " + innacuracy);

	draw_line_width(_x - 10, _y + 150, _x + obj_ui_controller.inner_edge_width - 10, _y + 150, 3);

	// Draw Rod
	var _scale = 2;
	var _r_sprite = global.rod_data[obj_player.rod_type, RP.SPRITE];
	var _rx = _x + sprite_get_width(_r_sprite) * _scale / 2;
	var _ry = _y + 100 + sprite_get_height(_r_sprite) * _scale / 2 + 80;
	draw_sprite_ext(_r_sprite, 0, _rx, _ry, _scale, _scale, 0, global.tint_color, 1);
	draw_text(_x, _y + 160, "Rod: " + string(global.rod_data[obj_player.rod_type, RP.NAME]));

	draw_line_width(_x - 10, _ry + sprite_get_height(_r_sprite), _x + obj_ui_controller.inner_edge_width - 10, _ry + sprite_get_height(_r_sprite), 3);

	// Draw Lure
	var _l_sprite = global.lure_data[obj_player.lure_type, LP.SPRITE];
	var _lx = _rx;
	var _ly = _ry + sprite_get_height(_r_sprite) * _scale / 2 + 30;
	draw_sprite_ext(_l_sprite, 0, _lx, _ly, _scale, _scale, 270, global.tint_color, 1);
	draw_text(_x, _ly - 20, "Lure: " + string(global.lure_data[obj_player.lure_type, LP.NAME]));

	draw_line_width(_x - 10, _ly + sprite_get_width(_l_sprite) * _scale, _x + obj_ui_controller.inner_edge_width - 10, _ly + sprite_get_width(_l_sprite) * _scale, 3);

	// Draw Catch History
	var _cx = _x; 
	var _cy = _ly + (sprite_get_width(_l_sprite) * _scale) + 10;
	draw_text(_cx, _cy, "Catch History: ");
	var _temp_queue = ds_queue_create();
	ds_queue_copy(_temp_queue, catch_history);

	while (!ds_queue_empty(_temp_queue)) {
		var _fish			= ds_queue_dequeue(_temp_queue);
		var _fish_sprite	= global.fish_data[_fish, FP.SPRITE];
		var _i				= ds_queue_size(_temp_queue);
		draw_sprite_ext(_fish_sprite, 0, _cx + 96 - 10, _cy + 64 + (sprite_get_height(_fish_sprite) + 10) * _i, 1, 1, 0, global.tint_color, 1);
	}
	ds_queue_destroy(_temp_queue);
}