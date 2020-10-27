show			= false;
show_mini		= false;
scale			= 2;
cell_width		= 64 * scale;
cell_height		= 64 * scale;
index			= 0;
index_mini		= 0;
scroll_index	= 0;
start_x			= obj_merchant.xcurr - sprite_get_width(spr_merchant) * obj_merchant.scale / 2 - cell_width;
start_y			= 10;
surface			= surface_create(cell_width, 1);

bob_iter		= 0;
bob_iter_speed	= 0.1;

// Add All Regions
ds_list_add(obj_game_controller.shop_data, ["region", REGION.DESERT]);
ds_list_add(obj_game_controller.shop_data, ["region", REGION.GLACIER]);
ds_list_add(obj_game_controller.shop_data, ["region", REGION.OCEAN]);

// Add All Rods
for (var i = 2; i < global.rod_total; i++)
	ds_list_add(obj_game_controller.shop_data, ["rod", i]);

// Add All Lures
for (var i = 2; i < global.lure_total; i++)
	ds_list_add(obj_game_controller.shop_data, ["lure", i]);

// Add All Fish Data
for (var i = 1; i < global.fish_total; i++)
	ds_list_add(obj_game_controller.shop_data, ["fish", i]);