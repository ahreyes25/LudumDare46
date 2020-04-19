/// @param item
/// @param item_type_string

var _item		= argument0;
var _item_type	= argument1;

obj_merchant.state = "show";

if (_item_type == "fish") {
	obj_merchant.item_name = global.fish_data[_item, FP.NAME];
	obj_merchant.item_cost = global.fish_data[_item, FP.COST];
}
if (_item_type == "rod") {
	obj_merchant.item_name = global.rod_data[_item, FP.NAME];
	obj_merchant.item_cost = global.rod_data[_item, FP.COST];
}
if (_item_type == "lure") {
	obj_merchant.item_name = global.lure_data[_item, FP.NAME];
	obj_merchant.item_cost = global.lure_data[_item, FP.COST];
}