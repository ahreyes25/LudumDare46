var _base_scale = sprite_width / sprite_get_width(spr_shadow_medium) * 1.3
var _scale		= _base_scale * (fall_dist / fall_dist_max);

if (draw_shadow) {
	switch (state) {
		case "fall":
			draw_sprite_ext(spr_shadow_medium, 0, x, y_start + fall_dist_max, _scale, _scale, 0, c_white, 0.5);
			break;
		
		default:
			draw_sprite_ext(spr_shadow_medium, 0, x, bbox_bottom, _scale, _scale, 0, c_white, 0.5 * alpha);
			break;
	}
}
draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, angle, c_white, alpha);