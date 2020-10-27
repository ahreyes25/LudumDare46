/// @description Save Game

var _save_map = ds_map_create();

_save_map[? "currency"]			= obj_sidebar_left.money;
_save_map[? "rod_equipped"]		= obj_player.rod_type;
_save_map[? "lure_equipped"]	= obj_player.lure_type;
_save_map[? "room"]				= room;
_save_map[? "multiplier"]		= obj_game_controller.multiplier;

// Inventory List
var _inventory_list = ds_list_create();
var _inventory_map  = ds_map_create();

for (var i = 0; i < ds_list_size(obj_game_controller.inventory_data); i++) {
	var _inventory_data = obj_game_controller.inventory_data[| i];
	var _inventory_string = string(_inventory_data[0]) + "_" + string(_inventory_data[1]);
	ds_list_add(_inventory_list, _inventory_string);
}

ds_map_add_list(_inventory_map, "inventory_list", _inventory_list);
_save_map[? "inventory_map_string"] = json_encode(_inventory_map);
ds_list_destroy(_inventory_list);
ds_map_destroy(_inventory_map);

// Player Fish Caught List
var _fish_caught_list = ds_list_create();
var _fish_caught_map  = ds_map_create();
ds_list_copy(_fish_caught_list, obj_game_controller.player_fish_caught);
ds_map_add_list(_fish_caught_map, "fish_caught_list", _fish_caught_list);
_save_map[? "fish_caught_map_string"] = json_encode(_fish_caught_map);
ds_list_destroy(_fish_caught_list);
ds_map_destroy(_fish_caught_map);

// Player Fish Data List
var _fish_data_list = ds_list_create();
var _fish_data_map  = ds_map_create();
ds_list_copy(_fish_data_list, obj_game_controller.player_fish_data);
ds_map_add_list(_fish_data_map, "fish_data_list", _fish_data_list);
_save_map[? "fish_data_map_string"] = json_encode(_fish_data_map);
ds_list_destroy(_fish_data_list);
ds_map_destroy(_fish_data_map);

// Library List
var _library_list = ds_list_create();
var _library_map  = ds_map_create();
ds_list_copy(_library_list, obj_game_controller.library_data);
ds_map_add_list(_library_map, "library_list", _library_list);
_save_map[? "library_map_string"] = json_encode(_library_map);
ds_list_destroy(_library_list);
ds_map_destroy(_library_map);

// Map Unlocked List
var _map_list = ds_list_create();
var _map_map  = ds_map_create();
ds_list_copy(_map_list, obj_game_controller.map_data);
ds_map_add_list(_map_map, "map_list", _map_list);
_save_map[? "map_map_string"] = json_encode(_map_map);
ds_list_destroy(_map_list);
ds_map_destroy(_map_map);

// Shop List
var _shop_list = ds_list_create();
var _shop_map  = ds_map_create();

for (var i = 0; i < ds_list_size(obj_game_controller.shop_data); i++) {
	var _shop_data = obj_game_controller.shop_data[| i];
	var _shop_string = string(_shop_data[0]) + "_" + string(_shop_data[1]);
	ds_list_add(_shop_list, _shop_string);
}

ds_map_add_list(_shop_map, "shop_list", _shop_list);
_save_map[? "shop_map_string"] = json_encode(_shop_map);
ds_list_destroy(_shop_list);
ds_map_destroy(_shop_map);

// Player Catch History
var _catch_queue = ds_queue_create();
var _catch_list  = ds_list_create();
var _catch_map	 = ds_map_create();
ds_queue_copy(_catch_queue, obj_sidebar_right.catch_history);

while (!ds_queue_empty(_catch_queue))
	ds_list_add(_catch_list, ds_queue_dequeue(_catch_queue));
ds_map_add_list(_catch_map, "catch_list", _catch_list);
_save_map[? "catch_map_string"] = json_encode(_shop_map);
ds_queue_destroy(_catch_queue);
ds_list_destroy(_catch_list);
ds_map_destroy(_catch_map);

// Do Actual Save!
map_to_buffer_save(_save_map, global.save_filename);
ds_map_destroy(_save_map);


























