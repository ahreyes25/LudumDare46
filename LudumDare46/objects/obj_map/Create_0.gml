show			= false;
show_mini		= false;
index			= 0;
index_mini		= 0;
scale			= 2;
cell_height		= 48 * scale;
cell_width		= 64 * scale;
start_x			= obj_ui_controller.outer_edge_width + obj_ui_controller.inner_edge_width + 10;
start_y			= 10;
scroll_index	= 0;
surface			= surface_create(cell_width, 1);

ds_list_add(obj_game_controller.map_data, REGION.FOREST);