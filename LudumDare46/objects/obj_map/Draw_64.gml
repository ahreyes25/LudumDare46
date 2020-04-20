if (show) {
	depth		 = obj_ui_controller.depth - 10;
	var _n_items = 4;
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
		draw_set_color(global.tint_color);
		draw_rectangle(_x, _y, _x + cell_width, _y + (cell_height * _n_items), true);
	
		// Draw Region
		for (var i = 0; i < _n_items; i++) {
			if (i < ds_list_size(regions)) {
				switch (i) {
					case 0: var _item_sprite = spr_forest_region; break;	
					case 1: var _item_sprite = spr_desert_region; break;	
					case 2: var _item_sprite = spr_glacier_region; break;	
					case 3: var _item_sprite = spr_ocean_region; break;	
				}
			}
			else
				var _item_sprite = spr_question_mark;
			
			var _ys = _y + cell_height / 2;
			draw_sprite_ext(_item_sprite, 0, 
				_x + cell_width / 2, _ys + cell_height * i + scroll_index,
				scale / 2, scale / 2, 0, global.tint_color, 1);
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
	}
}
























