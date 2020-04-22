if (!clicked)
	draw_sprite_ext(spr_tutorial1, 0, 0, 0, surface_get_width(application_surface) / sprite_get_width(spr_tutorial1), surface_get_height(application_surface) / sprite_get_height(spr_tutorial1), 0, c_white, 1);
else
	draw_sprite_ext(spr_tutorial2, 0, 0, 0, surface_get_width(application_surface) / sprite_get_width(spr_tutorial1), surface_get_height(application_surface) / sprite_get_height(spr_tutorial1), 0, c_white, 1);