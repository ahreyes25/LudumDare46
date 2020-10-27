if (exists(obj_banner)) {
	draw_set_alpha(alpha);
	draw_set_color(c_black);
	draw_rectangle(0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false);
	draw_set_color(global.tint_color);
	draw_set_alpha(1);
}

if (!surface_exists(surface))
	surface	= surface_create(width, height);
	
surface_set_target(surface);

draw_clear_alpha(c_black, 0);

var _x = 100;
var _y = 4;

draw_set_color(c_white);
draw_sprite_nine_slice(spr_meter_frame, 0, _x, _y, _x + width, _y + height, 1);
draw_sprite_nine_slice(spr_meter_fill, 0, _x + 8, _y + height - (goal_ticks * pixel_per_tick) - 4 - (goal_offset * pixel_per_tick), _x + width - 8, _y + height - (goal_offset * pixel_per_tick), 1);
draw_set_color(global.tint_color);

//for (var i = goal_ticks + 1; i < ticks; i += pixel_per_tick)
//	draw_sprite_ext(spr_meter_tick, 0, _x, height - i * pixel_per_tick, image_xscale, image_yscale, image_angle, global.tint_color, image_alpha);
	
surface_reset_target();

if (surface_exists(surface) && (sprite == undefined || !sprite_exists(sprite))) {
	sprite = sprite_create_from_surface(
		surface, 0, 0, surface_get_width(surface), surface_get_height(surface), 
		false, false, surface_get_width(surface) / 2, surface_get_height(surface)
	);
	ds_list_add(sprites, sprite);
}

// Draw Surface
draw_sprite_ext(sprite, 0, surf_x, surf_y, scale, scale, rot, global.tint_color, alpha);
draw_sprite_ext(spr_meter_arrow, 0, surf_x, surf_y - (arrow_tick_pos * (pixel_per_tick + 0.5)) - 4, image_xscale, image_yscale, image_angle, global.tint_color, image_alpha);