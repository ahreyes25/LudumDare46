/// @arg room

obj_transitions.next_room = argument0;
obj_transitions.state = "fade_in";

if (room != rm_tutorial && room != rm_difficulty && room != rm_title &&
	room != rm_forest_0 && room != rm_desert_0 && room != rm_glacier_0 && room != rm_ocean_0)
		sfx_play(sfx_travel);