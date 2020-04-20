/// @param item_enum
/// @param item_type_string

var _item_enum	 = argument0;
var _item_string = argument1;

if (_item_string == "rod") {
	obj_player.rod_type = _item_enum;
	obj_game_controller.player_rod_type = _item_enum;
}
else if (_item_string == "lure") {
	obj_player.lure_type = _item_enum;	
	obj_game_controller.player_lure_type = _item_enum;
}
	
obj_inventory.show_mini_mini = false;
obj_inventory.show_mini = false;