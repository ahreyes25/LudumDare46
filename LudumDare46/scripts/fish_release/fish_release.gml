var _index = index - (scroll_index div cell_height);
ds_list_delete(obj_game_controller.inventory_data, _index);
obj_merchant.state = "release_done";
obj_merchant.released_count++;