/// @param item_enum
/// @param item_type_string

var _item		= argument0;
var _item_type	= argument1;

var _reward		= instance_create_layer(0, 0, "Controllers", obj_catch_reward);
_reward.fish	= _item;
_reward.name	= global.fish_data[_item, FP.NAME];
_reward.sprite	= global.fish_data[_item, FP.SPRITE];
_reward.rarity	= global.fish_data[_item, FP.RARITY];
_reward.desc	= global.fish_data[_item, FP.DESC];

// Add To Recently Caught Queue
if (ds_queue_size(obj_sidebar_right.catch_history) < 3)
	ds_queue_enqueue(obj_sidebar_right.catch_history, _item);	
else {
	ds_queue_dequeue(obj_sidebar_right.catch_history);
	ds_queue_enqueue(obj_sidebar_right.catch_history, _item);	
}

// Add To Inventory
ds_list_add(obj_inventory.inventory, [_item_type, _item]);

// Add To Caught Fish
if (_item_type == "fish") {
	var _n_caught = obj_player.fish_caught[| _item] + 1;
	ds_list_replace(obj_player.fish_caught, _item, _n_caught);
	ds_list_replace(obj_player.fish_data, _item, true);
}

// Remove From Shop
for (var i = 0; i < ds_list_size(obj_shop.shop); i++) {
	var _shop_item = obj_shop.shop[| i];	
	var _shop_type = _shop_item[0];
	var _shop_enum = _shop_item[1];
	
	if (_shop_type == _item_type && _shop_enum == _item) 
		ds_list_delete(obj_shop.shop, i);
}

return _reward;

























