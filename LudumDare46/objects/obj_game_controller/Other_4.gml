if (room != _rm_init) {
	if (!exists(camera))
		camera = instance_create_layer(x, y, "Controllers", obj_camera);
}