surface_set_target(obj_game_controller.lure_surface);
draw_circle(x, y, 3, false);
//draw_sprite(spr_circle, 0, start_x, start_y);

if (path_position == 1 && !collision_point(x, y, obj_solid, false, false))
	draw_sprite(spr_x, 0, x, y);

surface_reset_target();

if (path_position < 1)
	draw_self();

draw_sprite(spr_cursor, target_image_index, desired_x, desired_y);