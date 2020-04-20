// No Mini
if (!show_mini) {	
	if (mouse_wheel_down())
		scroll_index -= cell_height;
	if (mouse_wheel_up())
		scroll_index += cell_height;
	index = clamp(((device_mouse_y_to_gui(0) - start_y) div cell_height), 0, ds_list_size(inventory) - 1);
}
// Show Mini
else if (!show_mini_mini) {
	var _start_y = index * cell_height;
	var _index = clamp(index - (scroll_index div cell_height), 0, ds_list_size(inventory) - 1);
	var _item = inventory[| _index];
	if (defined(_item)) {
		if (_item[0] == "fish")	
			index_mini = clamp(((device_mouse_y_to_gui(0) - _start_y) div 64), 0, 3);
		else
			index_mini = clamp(((device_mouse_y_to_gui(0) - _start_y) div 64), 0, 4);
	}
}

index_mini_mini = device_mouse_x_to_gui(0) >= obj_merchant.xcurr;

// Select Inventory Item
var _mx = device_mouse_x_to_gui(0);

if (show && mouse_check_button_pressed(mb_left)) {	
	// Select Mini
	if (show_mini && !show_mini_mini && _mx >= start_x + cell_width && _mx <= start_x + cell_width * 2) {
		sfx_play(sfx_memu_select);
		var _index = clamp(index - (scroll_index div cell_height), 0, ds_list_size(inventory) - 1);
		var _item = inventory[| _index];
		
		if (defined(_item) && array_length_1d(_item) > 0) {
			show_mini_mini = true;
		
			if (_item[0] == "fish") {
				switch (index_mini) {
					case 0:	merchant_show(_item[1], _item[0], "sell");		break;
					case 1:	merchant_show(_item[1], _item[0], "release");	break;
					case 2: merchant_show(_item[1], _item[0], "info");		break;
					case 3:	
						show_mini = false;	
						show_mini_mini = false;
						break;	// cancel
				}
			}
			else {
				switch (index_mini) {
					case 0: 
						equip_item(_item[1], _item[0]); 
						merchant_hide();
						sfx_play(sfx_equip);
						break;
					case 1:	merchant_show(_item[1], _item[0], "sell");		break;
					case 2:	merchant_show(_item[1], _item[0], "release");	break;
					case 3: merchant_show(_item[1], _item[0], "info");		break;
					case 4:	
						show_mini = false;	
						show_mini_mini = false;
						break;	// cancel
				}
			}
		}
	}
	// Select Mini Mini
	else if (show_mini_mini && show_mini) {
		sfx_play(sfx_memu_select);
		var _left_edge  = obj_ui_controller.outer_edge_width + obj_ui_controller.inner_edge_width;
		var _mx = device_mouse_x_to_gui(0);
		
		if (_mx > _left_edge && _mx > surface_get_width(application_surface) / 2) {
			// No
			if (index_mini_mini) {
				merchant_hide();
				show_mini_mini = false;
			}
			// Do Thing
			else {
				var _index = clamp(index - (scroll_index div cell_height), 0, ds_list_size(inventory) - 1);
				var _item = inventory[| _index];
				
				if (_item[0] == "fish") {
					switch (index_mini) {
						case 0:	
							item_sell();
							show_mini_mini = false;
							show_mini = false;
							sfx_play(sfx_purchase);
							break;	// sell
					
						case 1:	
							fish_release();
							show_mini_mini = false;
							show_mini = false;
							sfx_play(sfx_no_purchase);
							break;	// release
					
						case 2: 
							fish_info();
							show_mini_mini = false;
							show_mini = false;
							break;	// get info
					}
				}
				else {
					switch (index_mini) {
						case 1:	
							item_sell();
							show_mini_mini = false;
							show_mini = false;
							sfx_play(sfx_purchase);
							break;	// sell
					
						case 2:	
							fish_release();
							show_mini_mini = false;
							show_mini = false;
							sfx_play(sfx_no_purchase);
							break;	// release
					
						case 3: 
							fish_info();
							show_mini_mini = false;
							show_mini = false;
							break;	// get info
					}
				}
			}	
		}
	}
	// Select Normal
	else if (_mx >= start_x && _mx <= start_x + cell_width) {
		sfx_play(sfx_memu_select);
		show_mini = true;
		show_mini_mini = false;	
	}
}


