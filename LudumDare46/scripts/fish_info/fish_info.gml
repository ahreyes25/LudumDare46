var _index = index - (scroll_index div cell_height);
var _item  = inventory[| _index];

if (_item[0] == "fish")
	obj_merchant.item_info = global.fish_data[_item[1], FP.INFO];
if (_item[0] == "rod")
	obj_merchant.item_info = global.rod_data[_item[1], RP.INFO];
if (_item[0] == "lure")
	obj_merchant.item_info = global.lure_data[_item[1], LP.INFO];

obj_merchant.state = "info_done";
obj_merchant.learned_about++;