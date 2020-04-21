if (!show_mini)
	index = clamp(((device_mouse_y_to_gui(0) - start_y) div cell_height), 0, 3);
index_mini = device_mouse_x_to_gui(0) >= obj_merchant.xcurr;

var _mx = device_mouse_x_to_gui(0);

if (show && mouse_check_button_pressed(mb_left)) {
	#region Exit Menu If Clicking Out
	// Confirmed With Merchant
	if (show_mini) {
		
	}
	else {
		
	}
	#endregion
	#region Select Region To Travel To
	if (!show_mini && _mx >= start_x && _mx <= start_x + cell_width) {
		var _index = clamp(index - (scroll_index div cell_height), 0, 3);
		if (_index < ds_list_size(regions)) {
			show_mini = true;	
			obj_merchant.state = "travel_confirm";
			sfx_play(sfx_memu_select);
			
			var _texts = [
				"You want to go to the\n",
				"Decided to travel to the\n",
				"You'd like to go to the\n",
				"Traveling to the\n",
			];
			var _text = _texts[irandom(array_length_1d(_text) - 1)];
			
			switch (regions[| _index]) {
				case 0:	obj_merchant.map_text = _text + "Forest?";	break;
				case 1: obj_merchant.map_text = _text + "Desert?";	break;
				case 2: obj_merchant.map_text = _text + "Glacier?"; break;
				case 3: obj_merchant.map_text = _text + "Ocean?";	break;
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