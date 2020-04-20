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