if (show) {
	depth		 = obj_ui_controller.depth - 10;
	var _library = obj_game_controller.player_fish_data;
	var _n_items = ds_list_size(_library) - 1;
	var _x		 = 0;
	var _y		 = 0;
	
	if (_n_items > 0) {
	
		if (!surface_exists(surface))
			surface = surface_create(cell_width + 1, surface_get_height(application_surface) - start_y * 2 + 1);
		surface_resize(surface, cell_width + 1, surface_get_height(application_surface) - (start_y * 2) + 1);
		surface_set_target(surface);
		draw_clear_alpha(c_black, 0);
	
		// Draw Background
		draw_set_color(c_black);
		draw_rectangle(_x, _y, _x + cell_width, _y + (cell_height * _n_items), false);
		draw_set_color(global.tint_color);
		draw_rectangle(_x, _y, _x + cell_width, _y + (cell_height * _n_items), true);
	
		// Draw Items
		for (var i = 1; i <= _n_items; i++) {
			var _item_sprite = global.fish_data[i, FP.SPRITE];
			
			if (obj_game_controller.player_fish_caught[| i] > 0) {
				var _ys = _y + cell_height / 2;
				draw_sprite_ext(_item_sprite, 0, 
					_x + cell_width / 2, _ys + cell_height * (i - 1) + scroll_index,
					scale / 2, scale / 2, 0, global.tint_color, 1);
			}
			else {
				if (obj_game_controller.player_fish_data[| i]) {
					var _ys = _y + cell_height / 2;
					draw_sprite_ext(spr_exclamation_mark, 0, 
						_x + cell_width / 2, _ys + cell_height * (i - 1) + scroll_index,
						scale / 2, scale / 2, 0, global.tint_color, 1);
				}
				else {
					var _ys = _y + cell_height / 2;
					draw_sprite_ext(spr_question_mark, 0, 
						_x + cell_width / 2, _ys + cell_height * (i - 1) + scroll_index,
						scale / 2, scale / 2, 0, global.tint_color, 1);
				}
			}
			draw_text(_x + 5, _ys + cell_height * (i - 1) + scroll_index - (cell_height / 2) + 5, i);
		}
	
		// Draw Selection Cursor
		if (index <= _n_items) {
			draw_set_alpha(0.1);
			draw_rectangle(_x, _y + (index * cell_height), _x + cell_width, _y + (index * cell_height) + cell_height, false);
			draw_set_alpha(1);
			draw_rectangle(_x, _y + (index * cell_height), _x + cell_width, _y + (index * cell_height) + cell_height, true);
		}
	
		surface_reset_target();
		draw_surface(surface, start_x, start_y);
		
		// Draw Scroll Bar
		var _scroll_y = ((((_n_items * cell_height) - scroll_index) / (_n_items * cell_height)) * surface_get_height(application_surface)) - surface_get_height(application_surface);
		draw_sprite_ext(spr_scroll_bar, 0, start_x, _scroll_y, 1, 1, 0, global.tint_color, 0.75);
		
		// Draw Scroll Prompt
		var _sh = surface_get_height(application_surface);
		draw_sprite_ext(spr_arrow_up, 0, start_x + cell_width / 2, 32 + sin(bob_iter), 1, 1, sin(bob_iter), global.tint_color, 1);
		draw_sprite_ext(spr_arrow_down, 0, start_x + cell_width / 2, (_sh - 32) - sin(bob_iter), 1, 1, sin(bob_iter), global.tint_color, 1);
		
		// Draw Fish Info And If Caught, Etc
		// Draw Info Panel
		var _index = index - (scroll_index div cell_height) + 1;
		if (_index > 0 && _index <= _n_items) {
			var _mini_x	= start_x + cell_width;
			var _mini_y	= index * cell_height + 10;
			
			// Have Fish Data
			if (obj_game_controller.player_fish_data[| _index]) {
				// Info Panel Frame
				draw_set_color(c_black);
				draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height * 2.1, false);
				draw_set_color(global.tint_color);
				draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width * 4, _mini_y + cell_height * 2.1, true);
			
				if (obj_game_controller.player_fish_caught[| _index] > 0) 
					draw_text(_mini_x + 10, _mini_y + 10, global.fish_data[_index, FP.NAME]);
				else
					draw_text(_mini_x + 10, _mini_y + 10, "???");
					
				if (obj_game_controller.player_fish_caught[| _index] > 0) 
					draw_text(_mini_x + 10, _mini_y + 30, global.fish_data[_index, FP.DESC]);
				else
					draw_text(_mini_x + 10, _mini_y + 30, "???");
				
				var _fish_list = ds_list_create();
				fish_get_region(_index, _fish_list);
				var _string = "";
				for (var i = 0; i < ds_list_size(_fish_list); i++) {
					var _region = _fish_list[| i];
					var _name = global.region_data[_region, P.NAME];
					
					if (_string != "")
						_string += ", " + _name;
					else
						_string += " " + _name;
				}
				ds_list_destroy(_fish_list);
				
				var _lure_best			= fish_get_lure_best(_index);
				var _lure_best_name		= global.lure_data[_lure_best, LP.NAME];
				var _lure_best_chances	= global.lure_data[_lure_best, LP.CATCH_CHANCE];
				var _lure_best_chance	= _lure_best_chances[_index] * 100;
				
				var _lure_worst			= fish_get_lure_worst(_index);
				var _lure_worst_chances	= global.lure_data[_lure_worst, LP.CATCH_CHANCE];
				var _lure_worst_chance	= _lure_worst_chances[_index] * 100;
				
				var _lure_avg			= fish_get_lure_avg(_index);
				var _lure_avg_chance	= _lure_avg * 100;
				
				draw_text(_mini_x + 10, _mini_y + 50, "Caught: " + string(obj_game_controller.player_fish_caught[| _index]));
				draw_text(_mini_x + 10, _mini_y + 70, "Rarity: " + string(global.fish_data[_index, FP.RARITY]));
				draw_text(_mini_x + 10, _mini_y + 90, "Region(s):" + _string);
				draw_text(_mini_x + 10, _mini_y + 110, "Best Lure: " + string(_lure_best_name));
				draw_text(_mini_x + 10, _mini_y + 130, "Encounter Chance With Best Lure: " + string(_lure_best_chance) + "%");
				draw_text(_mini_x + 10, _mini_y + 150, "Worst Encounter Chance: " + string(_lure_worst_chance) + "%");
				draw_text(_mini_x + 10, _mini_y + 170, "Average Encounter Chance: " + string(_lure_avg_chance) + "%");
			}
			else {
				// Info Panel Frame
				draw_set_color(c_black);
				draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width, _mini_y + cell_height, false);
				draw_set_color(global.tint_color);
				draw_rectangle(_mini_x, _mini_y, _mini_x + cell_width, _mini_y + cell_height, true);
				
				draw_sprite_ext(spr_question_mark, 0, _mini_x + cell_width / 2, _mini_y + cell_height / 2, 1, 1, 0, global.tint_color, 1);
			}
		}
	}
}
























