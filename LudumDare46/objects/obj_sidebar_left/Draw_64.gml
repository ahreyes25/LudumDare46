if (!exists(obj_banner)) {
	if (room == rm_desert || room == rm_forest || room == rm_ocean || room == rm_glacier) {
		depth = obj_ui_controller.depth - 1;

		var _x = obj_ui_controller.outer_edge_width + 30;
		var _y = 40;
		var _scale = 2;

		// Money
		draw_sprite_ext(spr_coin_ui, coin_image_index, _x - 20, _y, _scale, _scale, 0, global.tint_color, 1);
		draw_set_valign(fa_center);
		draw_text_transformed(_x + sprite_get_width(spr_coin_ui) + 10, _y + sprite_get_height(spr_coin_ui), 
			": " + string(money), _scale, _scale, 0);
		draw_set_valign(fa_top);

		// Inventory
		var _iy = _y + sprite_get_height(spr_coin_ui) + 60;
		var _col = touching_inventory || obj_inventory.show ? merge_color(global.tint_color, c_black, 0.5) : global.tint_color;
		draw_sprite_ext(spr_chest, 0, _x, _iy, _scale, _scale, 0, _col, 1);

		// Shop
		var _sy = _iy + sprite_get_height(spr_chest) + 60;
		var _col = touching_shop || obj_shop.show ? merge_color(global.tint_color, c_black, 0.5) : global.tint_color;
		draw_sprite_ext(spr_shop_ui, 0, _x, _sy, _scale, _scale, 0, _col, 1);

		// Library
		var _ly = _sy + sprite_get_height(spr_chest) + 70;
		var _col = touching_library || obj_library.show ? merge_color(global.tint_color, c_black, 0.5) : global.tint_color;
		draw_sprite_ext(spr_library_ui, 0, _x, _ly, _scale, _scale, 0, _col, 1);

		// Map
		var _my = _ly + sprite_get_height(spr_chest) + 70;
		var _col = touching_map || obj_map.show ? merge_color(global.tint_color, c_black, 0.5) : global.tint_color;
		draw_sprite_ext(spr_map, 0, _x, _my, _scale, _scale, 0, _col, 1);

		// Pause
		var _scale = 1;
		var _col = touching_menu ? merge_color(global.tint_color, c_black, 0.5) : global.tint_color;
		draw_sprite_ext(spr_home, 0, _x + obj_ui_controller.inner_edge_width - sprite_get_width(spr_home) - 45,
			surface_get_height(application_surface) - sprite_get_height(spr_home) * _scale - 10, _scale, _scale, 0, _col, 1);
	}
}

// Draw Mouse Text
if (obj_game_controller.mouse_text != "") {
	draw_set_halign(fa_left);
	var _mx = device_mouse_x_to_gui(0) + 20;
	var _my = device_mouse_y_to_gui(0) + 20;
	draw_set_color(c_black);
	draw_rectangle(_mx - 10, _my - 10, _mx + string_width(obj_game_controller.mouse_text) + 10, _my + string_height(obj_game_controller.mouse_text) + 10, false);
	draw_set_color(global.tint_color);
	draw_rectangle(_mx - 10, _my - 10, _mx + string_width(obj_game_controller.mouse_text) + 10, _my + string_height(obj_game_controller.mouse_text) + 10, true);
	draw_text(_mx, _my, obj_game_controller.mouse_text);
}