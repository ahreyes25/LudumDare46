file_delete(global.save_filename);

obj_sidebar_left.money					= 0;
obj_game_controller.player_rod_type		= ROD.ROD_1;
obj_game_controller.player_lure_type	= LURE.LURE_BASIC_1;

ds_list_clear(obj_game_controller.inventory_data);
ds_list_clear(obj_game_controller.library_data);
ds_list_clear(obj_game_controller.map_data);
ds_list_clear(obj_game_controller.shop_data);
ds_queue_clear(obj_sidebar_right.catch_history);
global.region = REGION.FOREST;
obj_game_controller.last_region = REGION.FOREST;

ds_list_clear(obj_game_controller.player_fish_caught);
ds_list_clear(obj_game_controller.player_fish_data);
for (var i = 0; i < global.fish_total; i++) {
	ds_list_add(obj_game_controller.player_fish_caught, false);	
	ds_list_add(obj_game_controller.player_fish_data, false);	
}

// Add All Regions
ds_list_add(obj_game_controller.shop_data, ["regn", REGION.DESERT]);
ds_list_add(obj_game_controller.shop_data, ["regn", REGION.GLACIER]);
ds_list_add(obj_game_controller.shop_data, ["regn", REGION.OCEAN]);

// Add All Rods
for (var i = 2; i < global.rod_total; i++)
	ds_list_add(obj_game_controller.shop_data, ["rodd", i]);

// Add All Lures
for (var i = 2; i < global.lure_total; i++)
	ds_list_add(obj_game_controller.shop_data, ["lure", i]);

// Add All Fish Data
for (var i = 1; i < global.fish_total; i++)
	ds_list_add(obj_game_controller.shop_data, ["fish", i]);
	
ds_list_add(obj_game_controller.inventory_data, ["rodd", ROD.ROD_BASIC_1]);
ds_list_add(obj_game_controller.inventory_data, ["lure", LURE.LURE_BASIC_1]);

ds_list_add(obj_game_controller.map_data, REGION.FOREST);