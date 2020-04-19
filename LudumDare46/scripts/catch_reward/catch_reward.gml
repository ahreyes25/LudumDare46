/// @param item_enum
/// @param item_type_string

var _fish		= argument0;
var _fish_type	= argument1;

var _reward		= instance_create_layer(0, 0, "Controllers", obj_catch_reward);
_reward.fish	= _fish;
_reward.name	= global.fish_data[_fish, FP.NAME];
_reward.sprite	= global.fish_data[_fish, FP.SPRITE];
_reward.rarity	= global.fish_data[_fish, FP.RARITY];
_reward.desc	= global.fish_data[_fish, FP.DESC];

// Add To Recently Caught Queue
if (ds_queue_size(obj_sidebar_right.catch_history) < 3)
	ds_queue_enqueue(obj_sidebar_right.catch_history, _fish);	
else {
	ds_queue_dequeue(obj_sidebar_right.catch_history);
	ds_queue_enqueue(obj_sidebar_right.catch_history, _fish);	
}

// Add To Inventory
ds_list_add(obj_inventory.inventory, [_fish_type, _fish]);

return _reward;