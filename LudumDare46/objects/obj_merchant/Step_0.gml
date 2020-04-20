switch (state) {
	#region Inventory
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
	#endregion
	#region Shop
	case "show_shop":
		if (obj_shop.show) {
			xcurr = lerp(xcurr, xtarget, 0.2);
		
			if (abs(xcurr - xtarget) <= 1) {
				state = "shop_wait";
				phrase = undefined;
			}
		}
		break;
	#endregion
	
	case "hide":
		xcurr = lerp(xcurr, x_start, 0.1);
		break;
		
	case "travel":
		if (obj_map.show) {
			xcurr = lerp(xcurr, xtarget, 0.2);
		
			if (abs(xcurr - xtarget) <= 1) {
				state = "travel_wait";
				phrase = undefined;
			}
		}
		break;
}