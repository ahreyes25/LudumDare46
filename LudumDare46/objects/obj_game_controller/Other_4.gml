if (room != _rm_init) {
	var _room_name = room_get_name(room);
	if (string_char_at(_room_name, string_length(_room_name)) != "0") {
		if (!exists(camera)) {
			camera = instance_create_layer(obj_pond.x + obj_pond.sprite_width / 2, 
				obj_pond.y + obj_pond.sprite_height / 2, "Controllers", obj_camera);
		}
		if (!exists(obj_player))
			player = instance_create_layer(0, 0, "Instances", obj_player);	
			
		ui_controller	= instance_create_layer(0, 0, "Controllers", obj_ui_controller);
		sidebar_right	= instance_create_layer(0, 0, "Controllers", obj_sidebar_right);
		sidebar_left	= instance_create_layer(0, 0, "Controllers", obj_sidebar_left);
		inventory		= instance_create_layer(0, 0, "Controllers", obj_inventory);
		merchant		= instance_create_layer(0, 0, "Controllers", obj_merchant);
		shop			= instance_create_layer(0, 0, "Controllers", obj_shop);
		library			= instance_create_layer(0, 0, "Controllers", obj_library);
		
		alarm[0] = 60;
	}
}