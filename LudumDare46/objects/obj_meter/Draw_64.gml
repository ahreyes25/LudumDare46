if (!surface_exists(surface))
	surface	= surface_create(width, height);
	
surface_set_target(surface);

draw_clear_alpha(c_black, 0);

var _x = 20;
var _y = 0;

draw_sprite_nine_slice(spr_meter_frame, 0, _x, _y, _x + width, _y + height, 1);
draw_sprite_ext(spr_meter_arrow, 0, _x - 10, _y + height - (arrow_tick_pos * pixel_per_tick), image_xscale, image_yscale, image_angle, global.tint_color, image_alpha);
draw_sprite_nine_slice(spr_meter_fill, 0, _x + 8, _y + height - (goal_ticks * pixel_per_tick) - 4, _x + width - 8, _y + height, 1);

for (var i = goal_ticks + 1; i < ticks; i += pixel_per_tick)
	draw_sprite_ext(spr_meter_tick, 0, _x, height - i * pixel_per_tick, image_xscale, image_yscale, image_angle, global.tint_color, image_alpha);
	
surface_reset_target();

if (surface_exists(surface)) {
	sprite = sprite_create_from_surface(
		surface, 0, 0, surface_get_width(surface), surface_get_height(surface), 
		false, false, surface_get_width(surface) / 2, surface_get_height(surface)
	);
}

// Draw Surface
var _scale	= 1.1;
var _surf_x = display_get_gui_width() / 2 - width / 2 - 20;
var _surf_y = display_get_gui_height() - (display_get_gui_height() - height * _scale) / 2;
draw_sprite_ext(sprite, 0, _surf_x, _surf_y, _scale, _scale, 0, global.tint_color, 1);