if (defined(anchor_x) && defined(anchor_y) && defined(_len) && defined(_dir)) {	
	if (!defined(lure)) {
		// Draw Anchor Circle
		draw_circle(anchor_x, anchor_y, 5, false);
	
		// Draw Aim Line
		draw_line_width(anchor_x, anchor_y, anchor_x + _len_x, anchor_y + _len_y, 3);
		draw_line_width(x, y, anchor_x, anchor_y, 3);
		draw_sprite(sprite, 0, x, y);
	
		// Draw Aim Cursor
		image_speed = 0.1;
		draw_sprite(spr_cursor, image_index, anchor_x + _len_x, anchor_y + _len_y);
	}
	else {
		// Draw Anchor Circle
		draw_circle(anchor_x, anchor_y, 5, false);
	
		// Draw Aim Line
		draw_line_width(anchor_x, anchor_y, anchor_x + _len_x, anchor_y + _len_y, 3);
		draw_line_width(launched_x, launched_y, anchor_x, anchor_y, 3);
		draw_sprite(sprite, 0, launched_x, launched_y);
	}
}