fish		= ds_list_create();
max_fish	= 20;

repeat (max_fish) {
	var _solids = ds_list_create();
	collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, false, false, _solids, false);
	var _index = irandom(ds_list_size(_solids) - 1);
	var _solid = _solids[| _index];
	var _x = random(_solid.sprite_width);
	var _y = random(_solid.sprite_height);
	var _fish = instance_create_layer(_solid.x + _x, _solid.y + _y, "Instances", obj_fish_hidden);
	ds_list_add(fish, _fish);
	ds_list_destroy(_solids);
}