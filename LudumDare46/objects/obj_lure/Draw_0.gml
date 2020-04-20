if (!surface_exists(obj_game_controller.lure_surface))
	obj_game_controller.lure_surface = surface_create(room_width * 2, room_height * 2);

surface_set_target(obj_game_controller.lure_surface);
if (path_position < 1 && state == "throw")
	draw_circle(x, y, 3, false);
//draw_sprite(spr_circle, 0, start_x, start_y);

if (path_position == 1 && !collision_point(x, y, obj_solid, false, false))
	draw_sprite_ext(spr_x, 0, x, y, image_xscale, image_yscale, image_angle, global.tint_color, image_alpha);

surface_reset_target();

if (path_position < 1) {
	sprite_index = global.lure_data[type, LP.SPRITE];
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, point_direction(x, y, desired_x, desired_y), global.tint_color, 1);
}

if (state == "throw")
	draw_sprite_ext(spr_cursor, target_image_index, desired_x, desired_y, image_xscale, image_yscale, image_angle, global.tint_color, image_alpha);
if (state == "float")
	draw_sprite_ext(spr_lure_water, bob_image_index, x, y + sin(bob_iter) * 3, image_xscale, image_yscale, image_angle, global.tint_color, image_alpha);