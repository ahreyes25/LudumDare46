if (mouse_check_button_released(mb_left)) {
	
	// Inventory
	if (!obj_game_controller.paused) {
		var _x1 = obj_ui_controller.outer_edge_width + 30;
		var _x2 = _x1 + sprite_get_width(spr_coin_ui) * 4;
		var _y1 = sprite_get_height(spr_coin_ui) + 140;
		var _y2 = _y1 + sprite_get_height(spr_coin_ui) * 4;
		var _mx = window_mouse_get_x();
		var _my = window_mouse_get_y();
	
		if (_mx >= _x1 && _mx <= _x2 && _my >= _y1 && _my <= _y2) {
			obj_inventory.show = !obj_inventory.show;
			if (!obj_inventory.show)
				merchant_hide();
		}
	}
	
	// Pause
	var _scale = 1;
	var _x	= obj_ui_controller.outer_edge_width + 30;
	var _y	= 40;
	var _x1 = _x + obj_ui_controller.inner_edge_width - sprite_get_width(spr_home) - 45;
	var _y1 = surface_get_height(application_surface) - sprite_get_height(spr_home) * _scale - 10;
	var _x2 = _x1 + sprite_get_width(spr_home) * _scale;
	var _y2 = _y1 + sprite_get_height(spr_home) * _scale;
	
	if (_mx >= _x1 && _mx <= _x2 && _my >= _y1 && _my <= _y2)
		obj_game_controller.paused = !obj_game_controller.paused;	
}