if (defined(anchor_x) && defined(anchor_y)) {	
	if (!defined(lure)) {
		// Draw Aim Line
		var _len	= point_distance(x, y, anchor_x, anchor_y);
		var _dir	= point_direction(x, y, anchor_x, anchor_y);
		var _len_x	= lengthdir_x(_len * 2, _dir);
		var _len_y	= lengthdir_y(_len * 2, _dir);
		draw_line_width(x, y, anchor_x + _len_x, anchor_y + _len_y, 3);
		draw_sprite(sprite, 0, x, y);
	
		// Draw Aim Cursor
		image_speed = 0.1;
		draw_sprite(spr_cursor, image_index, anchor_x + _len_x, anchor_y + _len_y);
	}
}