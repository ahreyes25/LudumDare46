#region Data Files
#endregion

#region Controllers
// Game Is Not Loading Anything
if (!exists(camera))
	camera = instance_create_layer(0, 0, "Controllers", obj_camera);
#endregion