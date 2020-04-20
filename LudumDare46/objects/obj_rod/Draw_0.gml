if (defined(cursor_x) && defined(cursor_y) && defined(anchor_x) && defined(anchor_y)) {	
	if (!defined(lure)) {
		// Draw Aim Line
		//draw_line_width(x, y, cursor_x, cursor_y, 3);
		//draw_sprite(sprite, 0, x, y);
	
		// Draw Aim Cursor
		//image_speed = 0.1;
		//draw_sprite(spr_cursor, image_index, cursor_x, cursor_y);
		
		// Draw GUI Aim Visuals
		draw_sprite_ext(spr_ring_inner, 0, anchor_x, anchor_y, 1, 1, inner_rot, global.tint_color, 1);
		draw_sprite_ext(spr_ring_outer, 0, anchor_x, anchor_y, 1, 1, outer_rot, global.tint_color, 1);
		var _len = point_distance(anchor_x, anchor_y, mouse_x, mouse_y);
		var _dir = point_direction(anchor_x, anchor_y, mouse_x, mouse_y);
		draw_line_width(anchor_x, anchor_y, anchor_x + lengthdir_x(_len, _dir), anchor_y + lengthdir_y(_len, _dir), 3);
		//_dir += 180;
		//draw_line_width(anchor_x, anchor_y, anchor_x + lengthdir_x(_len, _dir), anchor_y + lengthdir_y(_len, _dir), 3);
	}
}

if (defined(lure)) {
	if (lure.state == "return" || lure.state == "float") {
		draw_line_width(lure.start_x, lure.start_y, lure.x, lure.y, 3);
	}
}

if (defined(anchor_x) && defined(anchor_y) && defined(desired_x) && defined(desired_y))
	draw_text(mouse_x, mouse_y, "dis: " + string(point_distance(anchor_x, anchor_y, desired_x, desired_y)) + "m");
else
	draw_text(mouse_x, mouse_y, "dis: 0m");