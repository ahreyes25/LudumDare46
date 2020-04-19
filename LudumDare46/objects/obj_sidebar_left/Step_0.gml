var _x1 = obj_ui_controller.outer_edge_width + 30;
var _x2 = _x1 + sprite_get_width(spr_coin_ui) * 4;
var _y1 = sprite_get_height(spr_coin_ui) + 140;
var _y2 = _y1 + sprite_get_height(spr_coin_ui) * 4;
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

in_left = _mx < _x2 + 10;

if (mouse_check_button_released(mb_left)) {
	
	// Inventory
	if (!obj_game_controller.paused) {
		if (_mx >= _x1 && _mx <= _x2 && _my >= _y1 && _my <= _y2) {
			if (!obj_inventory.show && ds_list_size(obj_inventory.inventory) > 0)
				inventory_show();
			else if (obj_inventory.show)
				inventory_hide();
		}
	
		// Shop
		var _scale = 2;
		var _x = obj_ui_controller.outer_edge_width + 30;
		var _y = 40 + sprite_get_height(spr_coin_ui) + 100 + sprite_get_height(spr_chest) + 100;
		var _x1 = _x;
		var _y1 = _y;
		var _x2 = _x1 + sprite_get_width( spr_shop_ui) * _scale;
		var _y2 = _y1 + sprite_get_height(spr_shop_ui) * _scale;
		
		if (_mx >= _x1 && _mx <= _x2 && _my >= _y1 && _my <= _y2) {
			if (obj_shop.show)
				shop_hide();
			else
				shop_show();
		}
		
		// Library 
		var _ly = _y1 + sprite_get_height(spr_library_ui) + 110;
		var _y2 = _ly + sprite_get_height(spr_library_ui) * _scale;
		if (_mx >= _x1 && _mx <= _x2 && _my >= _ly && _my <= _y2) {
			if (obj_library.show)
				library_hide();
			else
				library_show();
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




















