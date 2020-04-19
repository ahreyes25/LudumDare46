// No Mini
if (!show_mini) {	
	if (mouse_wheel_down())
		scroll_index += cell_height;
	if (mouse_wheel_up())
		scroll_index -= cell_height;
	index = ((window_mouse_get_y() - start_y) div cell_height);
}
// Show Mini
else {
	var _start_y = index * cell_height;
	index_mini = ((window_mouse_get_y() - _start_y) div 64);
	show_debug_message(index_mini);
}

// Select Inventory Item
if (mouse_check_button_pressed(mb_left)) {	
	// Select Normal
	if (!show_mini) {
		var _index = index - (scroll_index div cell_height);
		if (_index >= 0) {
			show_mini = true;
			var _item = inventory[| _index];		
		}
	}
	// Select Mini
	else {
		switch (index_mini) {
			// Sell
			case 0:
				break;
				
			// Release
			case 1:
				break;
				
			// Info
			case 2:
				break;
				
			// Cancel
			case 3:
				show_mini = false;
				break;
		}
	}
}




















