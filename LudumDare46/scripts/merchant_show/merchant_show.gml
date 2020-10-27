/// @param item
/// @param item_type_string
/// @param merchant_showing

var _item		= argument0;
var _item_type	= argument1;
var _show		= argument2;

if (_show == "sell")
	obj_merchant.state = "show_sell";
else if (_show == "release")
	obj_merchant.state = "show_release";
else if (_show == "info")
	obj_merchant.state = "show_info";
else if (_show == "buy")
	obj_merchant.state = "show_shop";
else if (_show == "shop_confirm")
	obj_merchant.state = "shop_confirm";
else if (_show == "travel")
	obj_merchant.state = "travel";

if (_item_type == "fish") {
	obj_merchant.item_name		= global.fish_data[_item, FP.NAME];
	obj_merchant.item_cost_buy	= global.fish_data[_item, FP.COST_BUY];
	obj_merchant.item_cost_sell	= global.fish_data[_item, FP.COST_SELL];
}
if (_item_type == "rodd") {
	obj_merchant.item_name		= global.rod_data[_item, RP.NAME];
	obj_merchant.item_cost_buy	= global.rod_data[_item, RP.COST_BUY];
	obj_merchant.item_cost_sell	= global.rod_data[_item, RP.COST_SELL];
}
if (_item_type == "lure") {
	obj_merchant.item_name		= global.lure_data[_item, LP.NAME];
	obj_merchant.item_cost_buy	= global.lure_data[_item, LP.COST_BUY];
	obj_merchant.item_cost_sell	= global.lure_data[_item, LP.COST_SELL];
}
if (_item_type == "regn") {
	obj_merchant.item_name		= global.region_data[_item, P.NAME];
	obj_merchant.item_cost_buy	= global.region_data[_item, P.COST];
}
obj_merchant.item_type = _item_type;