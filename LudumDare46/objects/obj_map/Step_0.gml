//if (mouse_wheel_down())
//	scroll_index -= cell_height;
//if (mouse_wheel_up())
//	scroll_index += cell_height;
	
if (!show_mini)
	index = clamp(((device_mouse_y_to_gui(0) - start_y) div cell_height), 0, 3);
index_mini = device_mouse_x_to_gui(0) >= obj_merchant.xcurr;

if (show && mouse_check_button_pressed(mb_left)) {
	if (!show_mini && device_mouse_x_to_gui(0) < surface_get_width(application_surface) / 2) {
		var _index = clamp(index - (scroll_index div cell_height), 0, 3);
		if (_index < ds_list_size(regions)) {
			show_mini = true;	
			obj_merchant.state = "travel_confirm";
			sfx_play(sfx_memu_select);
			
			switch (regions[| _index]) {
				case 0:	obj_merchant.map_text = "You want to go to the \nForest?";	break;
				case 1: obj_merchant.map_text = "You want to go to the \nDesert?";	break;
				case 2: obj_merchant.map_text = "You want to go to the \nGlacier?"; break;
				case 3: obj_merchant.map_text = "You want to go to the \nOcean?";	break;
			}
		}
	}
	else {
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
}