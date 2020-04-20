if (show) {
	depth		 = obj_ui_controller.depth - 10;
	var _n_items = ds_list_size(inventory);
	var _x		 = 0;
	var _y		 = 0;
	
	if (_n_items > 0) {
	
		if (!surface_exists(surface))
			surface = surface_create(cell_width + 1, surface_get_height(application_surface) - 10);
		surface_resize(surface, cell_width + 1, surface_get_height(application_surface) - 10);
		surface_set_target(surface);
		draw_clear_alpha(c_black, 0);
	
		// Draw Background
		draw_set_color(c_black);
		draw_rectangle(_x, _y, _x + cell_width, _y + (cell_height * _n_items), false);
		draw_set_color(global.tint_color);
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
					_x + cell_width / 2, _ys + cell_height * i + scroll_index - sprite_get_width(_item_sprite) / 2,
					scale / 2, scale / 2, -90, global.tint_color, 1);
			}
			else {
				var _ys = _y + cell_height / 2;
				draw_sprite_ext(_item_sprite, 0, 
					_x + cell_width / 2, _ys + cell_height * i + scroll_index,
					scale / 2, scale / 2, 0, global.tint_color, 1);
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
		
		// Draw Scroll Bar
		var _scroll_y = ((((_n_items * cell_height) - scroll_index) / (_n_items * cell_height)) * surface_get_height(application_surface)) - surface_get_height(application_surface);
		draw_sprite_ext(spr_scroll_bar, 0, start_x, clamp(_scroll_y, 0, surface_get_height(application_surface) - cell_height), 1, 1, 0, global.tint_color, 0.75);
		
		// Draw Info Panel
		if (!show_mini) {
			var _index = index - (scroll_index div cell_height);
			if (_index >= 0 && _index < _n_items) {
				var _item_data	= inventory[| _index];
				var _item_type	= _item_data[0];
				var _item_enum	= _item_data[1];
				var _mini_x		= start_x + cell_width;
				var _mini_y		= index * cell_height + 10;
		
				if (_item_type == "rod") {
					// Info Panel Frame
					draw_set_color(c_black);
					draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height * 2, false);
					draw_set_color(global.tint_color);
					draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height * 2, true);
			
					var _item_name = global.rod_data[_item_enum, RP.NAME];	
					var _item_desc = global.rod_data[_item_enum, RP.DESC];
					var _item_cost = global.rod_data[_item_enum, RP.COST_SELL];
			
					// Info Text
					draw_text(_mini_x + 10, _mini_y + 10, _item_name);
					draw_text(_mini_x + 10, _mini_y + 30, _item_desc);
					draw_text(_mini_x + 10, _mini_y + 50, "Sells For: $" + string(_item_cost) + ".00");
					draw_text(_mini_x + 10, _mini_y + 70, "Shake Chance (Per Frame): " + string(global.rod_data[_item_enum, RP.ACCURACY] * 100) + "%");
					draw_text(_mini_x + 10, _mini_y + 90, "Shake Amount: " + string(global.rod_data[_item_enum, RP.SHAKE]) + " pixels");
					draw_text(_mini_x + 10, _mini_y + 110, "Shake Duration: " + string(global.rod_data[_item_enum, RP.SHAKE_INTERVAL] / room_speed) + " seconds");
					draw_text(_mini_x + 10, _mini_y + 130, "Launch Speed: " + string(global.rod_data[_item_enum, RP.LAUNCH_SPEED]) + " pixels per second");
					draw_text(_mini_x + 10, _mini_y + 150, "Durability: " + string(global.rod_data[_item_enum, RP.DURABILITY]) + " bounce(s)");
				}
				if (_item_type == "lure") {
					// Info Panel Frame
					draw_set_color(c_black);
					draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height, false);
					draw_set_color(global.tint_color);
					draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height, true);
			
					var _item_name = global.lure_data[_item_enum, LP.NAME];	
					var _item_desc = global.lure_data[_item_enum, LP.DESC];
					var _item_cost = global.lure_data[_item_enum, LP.COST_SELL];
			
					// Info Text
					draw_text(_mini_x + 10, _mini_y + 10, _item_name);
					draw_text(_mini_x + 10, _mini_y + 30, _item_desc);
					draw_text(_mini_x + 10, _mini_y + 50, "Sells For: $" + string(_item_cost) + ".00");
				}
				if (_item_type == "fish") {
					// Info Panel Frame
					draw_set_color(c_black);
					draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height, false);
					draw_set_color(global.tint_color);
					draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height, true);
			
					var _item_name = global.fish_data[_item_enum, FP.NAME];	
					var _item_desc = global.fish_data[_item_enum, FP.DESC];
					var _item_cost = global.fish_data[_item_enum, FP.COST_SELL];
					
					draw_text(_mini_x + 10, _mini_y + 10, _item_name);
					draw_text(_mini_x + 10, _mini_y + 30, _item_desc);
					draw_text(_mini_x + 10, _mini_y + 50, "Sells For: $" + string(_item_cost) + ".00");	
					draw_text(_mini_x + 10, _mini_y + 70, "Rarity: " + string(global.fish_data[_item_enum, FP.RARITY]));
				}
			}
		}
		
		// Draw Mini Menu
		if (show_mini) {
			var _index = clamp(index - (scroll_index div cell_height), 0, ds_list_size(inventory) - 1);
			var _item = inventory[| _index];
			if (_item[0] == "fish")
				var _text	= ["Sell", "Donate", "Info", "Cancel"];
			else
				var _text	= ["Equip", "Sell", "Donate", "Info", "Cancel"];
			var _mini_w = 128;
			var _mini_h = 64;
			var _mini_x = start_x + cell_width;
			var _mini_y = index * cell_height;
			
			draw_set_halign(fa_center);
			draw_set_valign(fa_center);
			for (var i = 0; i < array_length_1d(_text); i++) {
				draw_set_color(c_black);
				draw_rectangle(_mini_x, _mini_y + (_mini_h * i), _mini_x + _mini_w, _mini_y + (_mini_h * i) + _mini_h, false);	
				draw_set_color(global.tint_color);
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