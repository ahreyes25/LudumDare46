if (!file_exists(global.save_filename)) return false;

var _load_map = buffer_file_to_map(global.save_filename);

obj_sidebar_left.money					= _load_map[? "currency"];
obj_game_controller.player_rod_type		= _load_map[? "rod_equipped"];
obj_game_controller.player_lure_type	= _load_map[? "lure_equipped"];
obj_game_controller.multiplier			= _load_map[? "multiplier"];

// Inventory List
var _inventory_map_string	= _load_map[? "inventory_map_string"];
var _inventory_map			= json_decode(_inventory_map_string);
var _inventory_list			= _inventory_map[? "inventory_list"];

ds_list_clear(obj_game_controller.inventory_data);
for (var i = 0; i < ds_list_size(_inventory_list); i++) {
	var _inventory_string = _inventory_list[| i];
	var _inventory_data_1 = string_delete(_inventory_string, 5, string_length(_inventory_string) - 5 + 1);
	var _inventory_data_2 = string_delete(_inventory_string, 1, 5);
	var _inventory_data   = [_inventory_data_1, _inventory_data_2];
	ds_list_add(obj_game_controller.inventory_data, _inventory_data);
}
ds_list_destroy(_inventory_list);
ds_map_destroy(_inventory_map);

// Fish Caught List
var _fish_caught_map_string	= _load_map[? "fish_caught_map_string"];
var _fish_caught_map		= json_decode(_fish_caught_map_string);
var _fish_caught_list		= _fish_caught_map[? "fish_caught_list"];
ds_list_copy(obj_game_controller.player_fish_caught, _fish_caught_list);
ds_list_destroy(_fish_caught_list);
ds_map_destroy(_fish_caught_map);

// Fish Data List
var _fish_data_map_string	= _load_map[? "fish_data_map_string"];
var _fish_data_map			= json_decode(_fish_data_map_string);
var _fish_data_list			= _fish_data_map[? "fish_data_list"];
ds_list_copy(obj_game_controller.player_fish_data, _fish_data_list);
ds_list_destroy(_fish_data_list);
ds_map_destroy(_fish_data_map);

// Library List
var _library_map_string		= _load_map[? "library_map_string"];
var _library_map			= json_decode(_library_map_string);
var _library_list			= _library_map[? "library_list"];
ds_list_copy(obj_game_controller.library_data, _library_list);
ds_list_destroy(_library_list);
ds_map_destroy(_library_map);

// Map List
var _map_map_string		= _load_map[? "map_map_string"];
var _map_map			= json_decode(_map_map_string);
var _map_list			= _map_map[? "map_list"];
ds_list_copy(obj_game_controller.map_data, _map_list);
ds_list_destroy(_map_list);
ds_map_destroy(_map_map);

// Shop List
var _shop_map_string	= _load_map[? "shop_map_string"];
var _shop_map			= json_decode(_shop_map_string);
var _shop_list			= _shop_map[? "shop_list"];

ds_list_clear(obj_game_controller.shop_data);
for (var i = 0; i < ds_list_size(_shop_list); i++) {
	var _shop_string = _shop_list[| i];
	var _shop_data_1 = string_delete(_shop_string, 5, string_length(_shop_string) - 5 + 1);
	var _shop_data_2 = string_delete(_shop_string, 1, 5);
	var _shop_data   = [_shop_data_1, _shop_data_2];
	ds_list_add(obj_game_controller.shop_data, _shop_data);
}
ds_list_destroy(_shop_list);
ds_map_destroy(_shop_map);

// Catch Queue
var _catch_map_string	= _load_map[? "catch_map_string"];
var _catch_map			= json_decode(_catch_map_string);
var _catch_list			= _catch_map[? "catch_list"];
var _catch_queue		= ds_queue_create();

// Copy List Contents Into Temp Queue
for (var i = 0; i < ds_list_size(_catch_list); i++)
	ds_queue_enqueue(_catch_queue, _catch_list[| i]);
	
// Clear Old Queue Of Contents Before Copying Temp Contents Into It
while (!ds_queue_empty(obj_sidebar_right.catch_history))
	ds_queue_dequeue(obj_sidebar_right.catch_history);
ds_queue_copy(obj_sidebar_right.catch_history, _catch_queue);

ds_list_destroy(_catch_list);
ds_map_destroy(_catch_map);
ds_queue_destroy(_catch_queue);

// Room Transition
var _room = _load_map[? "room"];
global.region = room_to_region(_room);
obj_game_controller.last_region = global.region;
room_transition(_room);


































