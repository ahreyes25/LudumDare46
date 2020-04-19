if (show) {
	depth			= obj_ui_controller.depth - 100;
	var _x1			= 0;
	var _y1			= 0;
	var _n_items	= ds_list_size(shop);

	#region Main Inventory
	if (!surface_exists(surface))
		surface = surface_create(cell_width, cell_height * _n_items);
	surface_resize(surface, cell_width + 1, cell_height * _n_items + 1);
	surface_set_target(surface);
	draw_clear_alpha(c_black, 0);

	// Draw Background
	draw_set_color(c_black);
	draw_rectangle(_x1, _y1, _x1 + cell_width, _y1 + (cell_height * _n_items), false);
	draw_set_color(c_white);
	draw_rectangle(_x1, _y1, _x1 + cell_width, _y1 + (cell_height * _n_items), true);
	
	/// Draw Icons
	for (var i = 0; i < _n_items; i++) {
		var _item_data = shop[| i];
		var _item_type = _item_data[0];
		var _item_enum = _item_data[1];
		
		if (_item_type == "fish")
			var _item_sprite = global.fish_data[_item_enum, FP.SPRITE];
		if (_item_type == "rod")
			var _item_sprite = global.rod_data[_item_enum, RP.SPRITE];
		if (_item_type == "lure")
			var _item_sprite = global.lure_data[_item_enum, LP.SPRITE];
		
		if (_item_type == "lure") {
			var _ys = _y1 + cell_height / 2;
			draw_sprite_ext(_item_sprite, 0, 
				_x1 + cell_width / 2 - sprite_get_width(_item_sprite) / 2, _ys + cell_height * i + scroll_index,
				scale / 2, scale / 2, 0, c_white, 1);
		}
		else {
			var _ys = _y1 + cell_height / 2;
			draw_sprite_ext(_item_sprite, 0, 
				_x1 + cell_width / 2, _ys + cell_height * i + scroll_index,
				scale / 2, scale / 2, 0, c_white, 1);
		}
	}
	
	// Draw Selection Cursor
	if (index < _n_items) {
		draw_set_alpha(0.1);
		draw_rectangle(_x1, _y1 + (index * cell_height), _x1 + cell_width, _y1 + (index * cell_height) + cell_height, false);
		draw_set_alpha(1);
		draw_rectangle(_x1, _y1 + (index * cell_height), _x1 + cell_width, _y1 + (index * cell_height) + cell_height, true);
	}
	
	surface_reset_target();
	draw_surface(surface, start_x, start_y);
	#endregion
	
	#region Item Info
	// Draw Info Panel
	var _index = index - (scroll_index div cell_height);
	if (_index >= 0 && _index < _n_items) {
		var _item_data	= shop[| _index];
		var _item_type	= _item_data[0];
		var _item_enum	= _item_data[1];
		var _mini_x		= start_x - cell_width * 4;
		var _mini_y		= index * cell_height + 10;
		
		if (_item_type == "rod") {
			// Info Panel Frame
			draw_set_color(c_black);
			draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height * 1.5, false);
			draw_set_color(c_white);
			draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height * 1.5, true);
			
			var _item_name = global.rod_data[_item_enum, RP.NAME];	
			var _item_desc = global.rod_data[_item_enum, RP.DESC];
			var _item_cost = global.rod_data[_item_enum, RP.COST_BUY];
			
			// Info Text
			draw_text(_mini_x + 10, _mini_y + 10, _item_name);
			draw_text(_mini_x + 10, _mini_y + 30, _item_desc);
			draw_text(_mini_x + 10, _mini_y + 50, "Cost: $" + string(_item_cost) + ".00");
			draw_text(_mini_x + 10, _mini_y + 70, "Shake Chance (Per Frame): " + string(global.rod_data[_item_enum, RP.ACCURACY] * 10) + "%");
			draw_text(_mini_x + 10, _mini_y + 90, "Shake Amount: " + string(global.rod_data[_item_enum, RP.SHAKE]) + " pixels");
			draw_text(_mini_x + 10, _mini_y + 110, "Shake Duration: " + string(global.rod_data[_item_enum, RP.SHAKE_INTERVAL] / room_speed) + " seconds");
			draw_text(_mini_x + 10, _mini_y + 130, "Launch Speed: " + string(global.rod_data[_item_enum, RP.LAUNCH_SPEED]) + " pixels per second");
			draw_text(_mini_x + 10, _mini_y + 150, "Durability: " + string(global.rod_data[_item_enum, RP.DURABILITY]) + " bounce(s)");
		}
		if (_item_type == "lure") {
			// Info Panel Frame
			draw_set_color(c_black);
			draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height, false);
			draw_set_color(c_white);
			draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height, true);
			
			var _item_name = global.lure_data[_item_enum, LP.NAME];	
			var _item_desc = global.lure_data[_item_enum, LP.DESC];
			var _item_cost = global.lure_data[_item_enum, LP.COST_BUY];
			
			// Info Text
			draw_text(_mini_x + 10, _mini_y + 10, _item_name);
			draw_text(_mini_x + 10, _mini_y + 30, _item_desc);
			draw_text(_mini_x + 10, _mini_y + 50, "Cost: $" + string(_item_cost) + ".00");
		}
		if (_item_type == "fish") {
			var _item_name = global.fish_data[_item_enum, FP.NAME];	
			var _item_desc = global.fish_data[_item_enum, FP.DESC];
			var _item_cost = global.fish_data[_item_enum, FP.COST_BUY];
		}
	}
	#endregion
}















