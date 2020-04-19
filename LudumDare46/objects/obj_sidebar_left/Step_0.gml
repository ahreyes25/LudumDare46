if (mouse_check_button_released(mb_left)) {
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