#region Update Indexes
// No Mini
if (!show_mini) {	
	if (mouse_wheel_down())
		scroll_index -= cell_height;
	if (mouse_wheel_up())
		scroll_index += cell_height;
	index = clamp(((device_mouse_y_to_gui(0) - start_y) div cell_height), 0, ds_list_size(obj_game_controller.inventory_data) - 1);
}
else if (!show_mini_mini) {
	var _start_y = index * cell_height;
	var _index = clamp(index - (scroll_index div cell_height), 0, ds_list_size(obj_game_controller.inventory_data) - 1);
	var _item = obj_game_controller.inventory_data[| _index];
	if (defined(_item)) {
		if (_item[0] == "fish")	
			index_mini = clamp(((device_mouse_y_to_gui(0) - _start_y) div 64), 0, 3);
		else
			index_mini = clamp(((device_mouse_y_to_gui(0) - _start_y) div 64), 0, 4);
	}
}

index_mini_mini = device_mouse_x_to_gui(0) >= obj_merchant.xcurr;
#endregion

// Select Inventory Item
var _mx = device_mouse_x_to_gui(0);
var _sw = surface_get_width(application_surface);

if (show && mouse_check_button_pressed(mb_left)) {	
	#region Exit Inventory
	if (_mx > _sw / 2 || mouse_outside_edges()) {
		if (show_mini && !show_mini_mini) {
			show_mini	= false;
			show		= false;
			merchant_hide();
		}
		else if (!show_mini && !show_mini_mini) {
			show = false;	
			merchant_hide();
		}
	}
	
	// Confirming With Merchant
	if (show_mini && show_mini_mini) {
		if (_mx < _sw / 2) {
			merchant_hide();
			show_mini_mini = false;
		}
	}
	#endregion
	#region Select Item Action
	if (show_mini && !show_mini_mini && _mx >= start_x + cell_width && _mx <= start_x + cell_width * 2) {
		
		var _index	= clamp(index - (scroll_index div cell_height), 0, ds_list_size(obj_game_controller.inventory_data) - 1);
		var _item	= obj_game_controller.inventory_data[| _index];
		
		if (defined(_item) && array_length_1d(_item) > 0) {
			show_mini_mini = true;
			sfx_play(sfx_memu_select);
		
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
	#endregion
	#region Merchant Confirmation
	else if (show_mini_mini && show_mini) {
		var _left_edge  = obj_ui_controller.outer_edge_width + obj_ui_controller.inner_edge_width;
		var _mx = device_mouse_x_to_gui(0);
		
		if (_mx > _left_edge && _mx > surface_get_width(application_surface) * 0.6) {
			sfx_play(sfx_memu_select);
			#region Declide Merchant
			if (index_mini_mini) {
				obj_merchant.state = "shop_wait";
				obj_merchant.shop_text = "huh... fine then...";
				show_mini_mini = false;
			}
			#endregion
			#region Confirm With Merchant
			else {
				sfx_play(sfx_memu_select);
				var _index = clamp(index - (scroll_index div cell_height), 0, ds_list_size(obj_game_controller.inventory_data) - 1);
				var _item = obj_game_controller.inventory_data[| _index];
				
				#region Fish Actions
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
							
							// Random Chance To Unlock Item
							if (percent(0.05)) {
								var _index = irandom(ds_list_size(obj_game_controller.shop_data) - 1);
								var _item  = obj_game_controller.shop_data[| _index];
								var _unlocked_item = "";
								
								if (_item[0] == "fish") {
									ds_list_replace(obj_game_controller.player_fish_data, _item[1], true);	
									_unlocked_item = "piece of fish data";
								}
								else if (_item[0] == "regn") {
									ds_list_add(obj_game_controller.map_data, _item[1]);	
									_unlocked_item = "region";
								}
								else {
									ds_list_add(obj_game_controller.inventory_data, _item);
									
									if (_item[0] == "rodd")
										_unlocked_item = "rod";
									else if (_item[0] == "lure")
										_unlocked_item = "lure";
								}
								ds_list_delete(obj_game_controller.shop_data, _index);
								sfx_play(sfx_purchase);
								obj_merchant.dono_text = "Congrats! Unlocked a new \n" + _unlocked_item + "!";
							}
							// No Unlock
							else {
								sfx_play(sfx_no_purchase);
								var _text = [
									"Ohhh bad luck!",
									"Better luck next time!",
									"Wanna try your luck again?",
									"Hehe, I win this time!"
								];
								obj_merchant.dono_text = _text[irandom(array_length_1d(_text) - 1)];
							}
							break;	// release
					
						case 2: 
							fish_info();
							show_mini_mini = false;
							show_mini = false;
							break;	// get info
					}
				}
				#endregion 
				#region Other Item Actions
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
				#endregion
			}	
			#endregion
		}
	}
	#endregion
	#region Select Top Level Item
	else if (_mx >= start_x && _mx <= start_x + cell_width) {
		sfx_play(sfx_memu_select);
		show_mini = true;
		show_mini_mini = false;	
	}
	#endregion
}
