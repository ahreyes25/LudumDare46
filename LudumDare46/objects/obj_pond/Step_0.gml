if (ds_list_size(fish) < max_fish) {
	var _solids = ds_list_create();
	collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, false, false, _solids, false);
	var _index = irandom(ds_list_size(_solids) - 1);
	var _solid = _solids[| _index];
	var _x = random_range(_solid.x + 100, _solid.x + _solid.sprite_width  - 100);
	var _y = random_range(_solid.x + 100, _solid.x + _solid.sprite_height - 100);
	var _fish = instance_create_layer(_x, _y, "Instances", obj_fish_hidden);
	ds_list_add(fish, _fish);
	ds_list_destroy(_solids);	
}