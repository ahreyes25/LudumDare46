// No Mini
if (!show_mini) {	
	if (mouse_wheel_down())
		scroll_index += cell_height;
	if (mouse_wheel_up())
		scroll_index -= cell_height;
	index = clamp(((window_mouse_get_y() - start_y) div cell_height), 0, ds_list_size(inventory) - 1);
}
// Show Mini
else if (!show_mini_mini) {
	var _start_y = index * cell_height;
	index_mini = clamp(((window_mouse_get_y() - _start_y) div 64), 0, 3);
}

index_mini_mini = window_mouse_get_x() >= obj_merchant.xcurr;

// Select Inventory Item
if (show && mouse_check_button_pressed(mb_left)) {	
	
	// Select Mini
	if (show_mini && !show_mini_mini) {
		var _index = index - (scroll_index div cell_height);
		var _item = inventory[| _index];
		show_mini_mini = true;
		
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
	// Select Mini Mini
	else if (show_mini_mini && show_mini) {
		
		// No
		if (index_mini_mini) {
			merchant_hide();
			show_mini_mini = false;
		}
		// Do Thing
		else {
			switch (index_mini) {
				case 0:	
					fish_sell();
					show_mini_mini = false;
					show_mini = false;
					break;	// sell
					
				case 1:	
					fish_release();
					show_mini_mini = false;
					show_mini = false;
					break;	// release
					
				case 2: 
					fish_info();
					show_mini_mini = false;
					show_mini = false;
					break;	// get info
			}
		}	
	}
	// Select Normal
	else {
		show_mini = true;
		show_mini_mini = false;	
	}
}


