if (show) {
	depth			= obj_ui_controller.depth - 100;
	var _x1			= 0;
	var _y1			= 0;
	var _n_items	= ds_list_size(shop);

	#region Main Inventory
	if (!surface_exists(surface))
		surface = surface_create(cell_width + 1, surface_get_height(application_surface) - 10);
	surface_resize(surface, cell_width + 1, surface_get_height(application_surface) - 10);
	surface_set_target(surface);
	draw_clear_alpha(c_black, 0);

	// Draw Background
	draw_set_color(c_black);
	draw_rectangle(_x1, _y1, _x1 + cell_width, _y1 + (cell_height * _n_items), false);
	draw_set_color(global.tint_color);
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
		if (_item_type == "region") {
			switch (_item_enum) {
				case 0: var _item_sprite = spr_forest_region;	break;	
				case 1: var _item_sprite = spr_desert_region;	break;	
				case 2: var _item_sprite = spr_glacier_region;	break;	
				case 3: var _item_sprite = spr_ocean_region;	break;	
			}
		}
		
		if (_item_type == "lure") {
			var _ys = _y1 + cell_height / 2;
			draw_sprite_ext(_item_sprite, 0, 
				_x1 + cell_width / 2, _ys + cell_height * i + scroll_index - sprite_get_width(_item_sprite) / 2,
				scale / 2, scale / 2, -90, global.tint_color, 1);
		}
		else if (_item_type == "fish") {
			var _ys = _y1 + cell_height / 2;
			draw_sprite_ext(spr_exclamation_mark, 0, 
				_x1 + cell_width / 2, _ys + cell_height * i + scroll_index,
				scale / 2, scale / 2, 0, global.tint_color, 1);
		}
		else {
			var _ys = _y1 + cell_height / 2;
			draw_sprite_ext(_item_sprite, 0, 
				_x1 + cell_width / 2, _ys + cell_height * i + scroll_index,
				scale / 2, scale / 2, 0, global.tint_color, 1);
		}
		draw_text(_x1 + 5, _ys + cell_height * i + scroll_index - (cell_height / 2) + 5, i + 1);
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
	
	// Draw Scroll Prompt
	var _sh = surface_get_height(application_surface);
	draw_sprite_ext(spr_arrow_up, 0, start_x + cell_width / 2, 32 + sin(bob_iter), 1, 1, sin(bob_iter), global.tint_color, 1);
	draw_sprite_ext(spr_arrow_down, 0, start_x + cell_width / 2, (_sh - 32) - sin(bob_iter), 1, 1, sin(bob_iter), global.tint_color, 1);
	
	// Draw Scroll Bar
	var _scroll_y = ((((_n_items * cell_height) - scroll_index) / (_n_items * cell_height)) * surface_get_height(application_surface)) - surface_get_height(application_surface);
	draw_sprite_ext(spr_scroll_bar, 0, start_x, clamp(_scroll_y, 0, surface_get_height(application_surface) - cell_height), 1, 1, 0, global.tint_color, 0.75);
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
			draw_set_color(global.tint_color);
			draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height * 1.5, true);
			
			var _item_name = global.rod_data[_item_enum, RP.NAME];	
			var _item_desc = global.rod_data[_item_enum, RP.DESC];
			var _item_cost = global.rod_data[_item_enum, RP.COST_BUY];
			
			// Info Text
			draw_text(_mini_x + 10, _mini_y + 10, _item_name);
			draw_text(_mini_x + 10, _mini_y + 30, _item_desc);
			draw_text(_mini_x + 10, _mini_y + 50, "Cost: $" + string(_item_cost));
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
			var _item_cost = global.lure_data[_item_enum, LP.COST_BUY];
			
			// Info Text
			draw_text(_mini_x + 10, _mini_y + 10, _item_name);
			draw_text(_mini_x + 10, _mini_y + 30, _item_desc);
			draw_text(_mini_x + 10, _mini_y + 50, "Cost: $" + string(_item_cost));
		}
		if (_item_type == "fish") {
			// Info Panel Frame
			draw_set_color(c_black);
			draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height, false);
			draw_set_color(global.tint_color);
			draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height, true);
			
			var _item_cost = global.fish_data[_item_enum, FP.COST_BUY];
			
			// Info Text
			draw_text(_mini_x + 10, _mini_y + 10, "Random Fish Data");
			draw_text(_mini_x + 10, _mini_y + 30, "Adds Information About 1 Fish To Your Library");
			draw_text(_mini_x + 10, _mini_y + 50, "Cost: $" + string(_item_cost));
		}
		if (_item_type == "region") {
			// Info Panel Frame
			draw_set_color(c_black);
			draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height, false);
			draw_set_color(global.tint_color);
			draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height, true);
			
			var _item_cost = global.region_data[_item_enum, P.COST];
			var _item_name = global.region_data[_item_enum, P.NAME];
			
			// Info Text
			draw_text(_mini_x + 10, _mini_y + 10, "New Region Access -- " + string(_item_name));
			draw_text(_mini_x + 10, _mini_y + 30, "Allow Travel To New Region");
			draw_text(_mini_x + 10, _mini_y + 50, "Cost: $" + string(_item_cost));
		}
	}
	#endregion
}