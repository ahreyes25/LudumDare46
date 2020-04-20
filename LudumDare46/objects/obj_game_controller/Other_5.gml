need_to_clear_surface = true;

if (room != _rm_init && room != rm_title) {
	var _room_name = room_get_name(room);
	if (string_char_at(_room_name, string_length(_room_name)) != "0") {
		instance_destroy(ui_controller);
		instance_destroy(sidebar_right);
		instance_destroy(sidebar_left);
		instance_destroy(inventory);
		instance_destroy(merchant);
		instance_destroy(shop);
		instance_destroy(library);
	}
}

switch (room) {
	case rm_title:		sfx_stop_array(sfx_water_loop);	break;
	case rm_forest_0:	sfx_stop_array(sfx_water_loop);	break;
}