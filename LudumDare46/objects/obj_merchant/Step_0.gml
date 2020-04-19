switch (state) {
	case "show_sell":
		if (obj_inventory.show) {
			xcurr = lerp(xcurr, xtarget, 0.2);
		
			if (abs(xcurr - xtarget) <= 1) {
				state = "sell_wait";
				phrase = undefined;
			}
		}
		break;
	
	case "show_release":
		if (obj_inventory.show) {
			xcurr = lerp(xcurr, xtarget, 0.2);
		
			if (abs(xcurr - xtarget) <= 1) {
				state = "release_wait";
				phrase = undefined;
			}
		}
		break;
	
	case "show_info":
		if (obj_inventory.show) {
			xcurr = lerp(xcurr, xtarget, 0.2);
		
			if (abs(xcurr - xtarget) <= 1) {
				state = "info_wait";
				phrase = undefined;
			}
		}
		break;
	
	case "hide":
		xcurr = lerp(xcurr, x_start, 0.1);
		break;
}