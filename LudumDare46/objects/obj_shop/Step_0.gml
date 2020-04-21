#region Update Indexes
if (mouse_wheel_down())
	scroll_index -= cell_height;
if (mouse_wheel_up())
	scroll_index += cell_height;

// Update Index
if (!show_mini)
	index = clamp(((device_mouse_y_to_gui(0) - start_y) div cell_height), 0, ds_list_size(shop) - 1);
else
	index_mini = device_mouse_x_to_gui(0) >= obj_merchant.xcurr;
#endregion

start_x	= obj_merchant.xcurr - sprite_get_width(spr_merchant) * obj_merchant.scale / 2 - cell_width;

var _mx = device_mouse_x_to_gui(0);
var _sw = surface_get_width(application_surface);

if (mouse_check_button_pressed(mb_left) && show) {
	
	#region Exit Shop Menu On Click Out
	if (show_mini) {
		if (_mx < _sw / 2) {
			show_mini = false;
			obj_merchant.state = "shop_wait";
		}	
	}
	else {
		if ((_mx < _sw / 2 && _mx > obj_ui_controller.outer_edge_width + obj_ui_controller.inner_edge_width) || _mx > _sw * 0.65 || mouse_outside_edges()) {
			show_mini = false;
			show = false;
			merchant_hide();
		}		
	}
	#endregion
	
	var _index	= index - (scroll_index div cell_height);
	if (_index >= 0 && _index < ds_list_size(shop)) {	
		#region Select Item For Sale
		if (!show_mini && _mx >= start_x && _mx <= start_x + cell_width) {
			sfx_play(sfx_memu_select);
			var _item	= shop[| _index];
			show_mini	= true;
			merchant_show(_item[1], _item[0], "shop_confirm");
		}
		#endregion
		#region Confirm Purchase
		else if (show_mini && _mx >= start_x + cell_width) {
			#region Not Interested In Purchase
			if (index_mini) {
				sfx_play(sfx_memu_select);
				show_mini = false;
				obj_merchant.state = "shop_wait";
				obj_merchant.shop_text = "huh... fine then...";
				sfx_play(sfx_no_purchase);
			}
			#endregion
			#region Try To Purchase
			else {
				sfx_play(sfx_memu_select);
				var _item = shop[| _index];
				
				// Check For Enough Money
				if (_item[0] == "fish")		var _cost = global.fish_data	[_item[1], FP.COST_BUY];
				if (_item[0] == "rod")		var _cost = global.rod_data		[_item[1], RP.COST_BUY];
				if (_item[0] == "lure")		var _cost = global.lure_data	[_item[1], LP.COST_BUY];
				if (_item[0] == "region")	var _cost = global.region_data	[_item[1], P.COST];
					
				// Have Enough Money
				if (obj_sidebar_left.money >= _cost) {
					if (_item[0] == "fish")
						ds_list_replace(obj_game_controller.player_fish_data, _item[1], true);	
					else if (_item[0] == "region")
						ds_list_add(obj_map.regions, _item[1]);	
					else
						ds_list_add(obj_inventory.inventory, _item);
						
					obj_sidebar_left.money -= _cost;
					obj_merchant.state = "shop_done";
					ds_list_delete(shop, _index);
					show_mini = false;
					sfx_play(sfx_purchase);
				}
				// Dont Have Enough Money
				else {
					sfx_play(sfx_memu_select);
					obj_merchant.state = "shop_reject";
					show_mini = false;
					sfx_play(sfx_not_enough_money);
				}
			}
			#endregion
		}
		#endregion
	}
}