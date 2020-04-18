if (defined(cursor_x) && defined(cursor_y)) {	
	if (!defined(lure)) {
		// Draw Aim Line
		draw_line_width(x, y, cursor_x, cursor_y, 3);
		//draw_sprite(sprite, 0, x, y);
	
		// Draw Aim Cursor
		image_speed = 0.1;
		draw_sprite(spr_cursor, image_index, cursor_x, cursor_y);
		
		// Draw GUI Aim Visuals
		draw_sprite_ext(spr_ring_inner, 0, anchor_x, anchor_y, 1, 1, inner_rot, c_white, 1);
		draw_sprite_ext(spr_ring_outer, 0, anchor_x, anchor_y, 1, 1, outer_rot, c_white, 1);
		var _len = point_distance(anchor_x, anchor_y, mouse_x, mouse_y);
		var _dir = point_direction(anchor_x, anchor_y, mouse_x, mouse_y);
		draw_line_width(anchor_x, anchor_y, anchor_x + lengthdir_x(_len, _dir), anchor_y + lengthdir_y(_len, _dir), 3);
		//_dir += 180;
		//draw_line_width(anchor_x, anchor_y, anchor_x + lengthdir_x(_len, _dir), anchor_y + lengthdir_y(_len, _dir), 3);
	}
}