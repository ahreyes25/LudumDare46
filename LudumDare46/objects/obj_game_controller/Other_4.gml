if (room != _rm_init) {
	if (!exists(camera)) {
		camera = instance_create_layer(obj_pond.x + obj_pond.sprite_width / 2, 
			obj_pond.y + obj_pond.sprite_height / 2, "Controllers", obj_camera);
	}
	if (!exists(obj_player))
		player = instance_create_layer(0, 0, "Instances", obj_player);	
}