if (show) {
	depth		 = obj_ui_controller.depth - 10;
	var _n_items = ds_list_size(inventory);
	var _x		 = 0;
	var _y		 = 0;
	
	if (_n_items > 0) {
	
		if (!surface_exists(surface))
			surface = surface_create(cell_width, cell_height * _n_items);
		surface_resize(surface, cell_width + 1, cell_height * _n_items + 1);
		surface_set_target(surface);
		draw_clear_alpha(c_black, 0);
	
		// Draw Background
		draw_set_color(c_black);
		draw_rectangle(_x, _y, _x + cell_width, _y + (cell_height * _n_items), false);
		draw_set_color(c_white);
		draw_rectangle(_x, _y, _x + cell_width, _y + (cell_height * _n_items), true);
	
		// Draw Items
		for (var i = 0; i < _n_items; i++) {
			var _item_data = inventory[| i];
			var _item_type = _item_data[0];
			var _item_enum = _item_data[1];
		
			if (_item_type == "fish")
				var _item_sprite = global.fish_data[_item_enum, FP.SPRITE];
			if (_item_type == "rod")
				var _item_sprite = global.rod_data[_item_enum, RP.SPRITE];
			if (_item_type == "lure")
				var _item_sprite = global.lure_data[_item_enum, LP.SPRITE];
		
			if (_item_type == "lure") {
				var _ys = _y + cell_height / 2;
				draw_sprite_ext(_item_sprite, 0, 
					_x + cell_width / 2 - sprite_get_width(_item_sprite) / 2, _ys + cell_height * i + scroll_index,
					scale / 2, scale / 2, 0, c_white, 1);
			}
			else {
				var _ys = _y + cell_height / 2;
				draw_sprite_ext(_item_sprite, 0, 
					_x + cell_width / 2, _ys + cell_height * i + scroll_index,
					scale / 2, scale / 2, 0, c_white, 1);
			}
		}
	
		// Draw Selection Cursor
		if (index < _n_items) {
			draw_set_alpha(0.1);
			draw_rectangle(_x, _y + (index * cell_height), _x + cell_width, _y + (index * cell_height) + cell_height, false);
			draw_set_alpha(1);
			draw_rectangle(_x, _y + (index * cell_height), _x + cell_width, _y + (index * cell_height) + cell_height, true);
		}
	
		surface_reset_target();
		draw_surface(surface, start_x, start_y);
		
		// Draw Mini Menu
		if (show_mini) {
			var _text	= ["Sell", "Donate", "Info", "Cancel"];
			var _mini_w = 128;
			var _mini_h = 64;
			var _mini_x = start_x + cell_width;
			var _mini_y = index * cell_height;
			
			draw_set_halign(fa_center);
			draw_set_valign(fa_center);
			for (var i = 0; i < 4; i++) {
				draw_set_color(c_black);
				draw_rectangle(_mini_x, _mini_y + (_mini_h * i), _mini_x + _mini_w, _mini_y + (_mini_h * i) + _mini_h, false);	
				draw_set_color(c_white);
				draw_rectangle(_mini_x, _mini_y + (_mini_h * i), _mini_x + _mini_w, _mini_y + (_mini_h * i) + _mini_h, true);		
				draw_text(_mini_x + _mini_w / 2, _mini_y + (_mini_h * i) + _mini_h / 2, _text[i]);
			}
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_set_alpha(0.1);
			draw_rectangle(_mini_x, _mini_y + (_mini_h * index_mini), _mini_x + _mini_w, _mini_y + (_mini_h * index_mini) + _mini_h, false);	
			draw_set_alpha(1.0);
		}
	}
}