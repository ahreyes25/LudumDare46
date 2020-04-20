draw_set_halign(fa_center);
draw_set_valign(fa_center);
var _sw = surface_get_width(application_surface);
var _sh = surface_get_height(application_surface);
switch (room) {
	case rm_forest_0:
		var _text = "This Pond looks a little smaller than it did last time...";
		break;
		
	case rm_desert_0:
		var _text = "I wonder how much longer this Pond will be here...";
		break;
		
	case rm_glacier_0:
		var _text = "You'd think there would be more ice...";
		break;
		
	case rm_ocean_0:
		var _text = "The Fish don't bite as much as they used to...";
		break;
		
	case rm_outro_0:
		var _text = "Keep Our Animals Alive... Do Your Part";
		break;
}
draw_text(_sw / 2, _sh / 2 + sin(bob_iter) * 2, _text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);