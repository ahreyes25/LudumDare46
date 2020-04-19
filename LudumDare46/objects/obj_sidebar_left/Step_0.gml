var _x1 = obj_ui_controller.outer_edge_width + 30;
var _x2 = _x1 + sprite_get_width(spr_coin_ui) * 4;
var _y1 = sprite_get_height(spr_coin_ui) + 140;
var _y2 = _y1 + sprite_get_height(spr_coin_ui) * 4;
var _mx = window_mouse_get_x();
var _my = window_mouse_get_y();

in_left = _mx < _x2 + 10;

if (mouse_check_button_released(mb_left)) {
	
	// Inventory
	if (!obj_game_controller.paused) {
		if (_mx >= _x1 && _mx <= _x2 && _my >= _y1 && _my <= _y2) {
			
			if (!obj_inventory.show && ds_list_size(obj_inventory.inventory) > 0)
				obj_inventory.show = true;
			else if (obj_inventory.show)
				obj_inventory.show = false;
			
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