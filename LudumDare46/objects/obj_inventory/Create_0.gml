show			= false;
show_mini		= false;
show_mini_mini	= false;
index			= 0;
index_mini		= 0;
index_mini_mini	= 0;
scale			= 2;
cell_height		= 48 * scale;
cell_width		= 64 * scale;
vert_space		= 0  * scale;
start_x			= obj_ui_controller.outer_edge_width + obj_ui_controller.inner_edge_width + 10;
start_y			= 10;
target_x		= start_x;
target_y		= start_y;
scroll_index	= 0;

surface			= surface_create(cell_width, 1);

ds_list_add(obj_game_controller.inventory_data, ["rod", ROD.ROD_BASIC_1]);
ds_list_add(obj_game_controller.inventory_data, ["lure", LURE.LURE_BASIC_1]);

bob_iter		= 0;
bob_iter_speed	= 0.1;