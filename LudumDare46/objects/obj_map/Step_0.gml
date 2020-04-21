if (!show_mini)
	index = clamp(((device_mouse_y_to_gui(0) - start_y) div cell_height), 0, 3);
index_mini = device_mouse_x_to_gui(0) >= obj_merchant.xcurr;

var _mx = device_mouse_x_to_gui(0);
var _sw = surface_get_width(application_surface);

if (show && mouse_check_button_pressed(mb_left)) {
	#region Exit Menu If Clicking Out
	// Confirm With Merchant
	if (show_mini) {
		if (_mx < _sw * 0.6) {
			obj_merchant.state = "travel_wait";
			show_mini = false;
		}
	}
	else {
		if (mouse_outside_edges() || _mx > _sw * 0.4) {
			merchant_hide();
			show_mini = false;
			show = false;
		}
	}
	#endregion
	#region Select Region To Travel To
	if (!show_mini && _mx >= start_x && _mx <= start_x + cell_width) {
		var _index = clamp(index - (scroll_index div cell_height), 0, 3);
		if (_index < ds_list_size(regions)) {
			show_mini = true;	
			obj_merchant.state = "travel_confirm";
			sfx_play(sfx_memu_select);
						
			switch (regions[| _index]) {
				// Forest
				case 0:	
					var _texts = [
						"You want to go to the\nForest?",
						"Oh! Traveling to the Forest?\nI once wrestled 3 alligators\nthere, I'll have you know.",
						"The great Forest huh?"
					];
					var _text = _texts[irandom(array_length_1d(_texts) - 1)];
					obj_merchant.map_text = _text;	
					break;
				
				// Desert
				case 1: 
					var _texts = [
						"You want to go to the\nDesert?",
						"Looking for them \nRattlesnakes? Desert's \njust the place to be.",
						"Only thing there is \ndust and bones.Still \nwanna go to the Desert?"
					];
					var _text = _texts[irandom(array_length_1d(_texts) - 1)];
					obj_merchant.map_text = _text;	
					break;
				
				// Glacier
				case 2: 
					var _texts = [
						"You want to go to the\nGlacier?",
						"I Always wanted to see a\nPengu up close? Glacier?",
						"Looking to freeze?\nGlacier's just the place \nto go!"
					];
					var _text = _texts[irandom(array_length_1d(_texts) - 1)];
					obj_merchant.map_text = _text; 
					break;
				
				// Ocean
				case 3: 
					var _texts = [
						"You want to go to the\nOcean?",
						"Not much out there,\nstill want to go to the\nOcean?",
						"The deepest and darkest\ncreatures live out in the\nOcean. Brave enough to check?"
					];
					var _text = _texts[irandom(array_length_1d(_texts) - 1)];
					obj_merchant.map_text = _text;	
					break;
			}
		}
	}
	#endregion
	#region Confirm With Merchant
	else if (show_mini && _mx > surface_get_width(application_surface) / 2) {
		// No
		if (index_mini) {
			obj_merchant.state = "travel_wait";
			show_mini = false;
			sfx_play(sfx_no_purchase);
		}
		// Yes
		else {
			var _index = clamp(index - (scroll_index div cell_height), 0, 3);
			if (_index < ds_list_size(regions)) {
				sfx_play(sfx_memu_select);
				global.region = regions[| _index];
				merchant_hide();
				map_hide();
				show_mini = false;
				switch (regions[| _index]) {
					case 0:	room_transition(rm_forest_0); break;
					case 1: room_transition(rm_desert_0); break;
					case 2: room_transition(rm_glacier_0); break;
					case 3: room_transition(rm_ocean_0); break;
				}
			}
		}
	}
	#endregion
}