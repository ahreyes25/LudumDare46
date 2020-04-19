var _index = index - (scroll_index div cell_height);
var _item  = inventory[| _index];

ds_list_delete(inventory, _index);
obj_merchant.state = "sell_done";
obj_merchant.bought_count++;

if (_item[0] == "fish")
	obj_sidebar_left.money += global.fish_data[_item[1], FP.COST];