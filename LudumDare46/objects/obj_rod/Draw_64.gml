// Draw GUI Aim Visuals
if (defined(cursor_x) && defined(cursor_y) && defined(anchor_x) && defined(anchor_y)) {
	var _sw		= surface_get_width(application_surface);
	var _sh		= surface_get_height(application_surface);
	var _boat_x	= _sw / 2;
	var _boat_y	= _sh - (sprite_get_height(spr_boat_side) * player.boat_scale) / 2;
	var _dir	= point_direction(mouse_x, mouse_y, anchor_x, anchor_y);
	draw_sprite_ext(spr_arrow, 0, _boat_x, _boat_y, 1, 1, _dir, c_white, 1);
}