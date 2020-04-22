depth = obj_ui_controller.depth + 1;

draw_set_halign(fa_center);
// Draw title
var _sw = surface_get_width(application_surface);
var _sh = surface_get_height(application_surface);
draw_text_transformed(_sw / 2, _sh * 0.3 - 20, "This Game Is Designed To Be A \"Slower Paced\" Experience.", 1, 1, sin(title_iter / 10) * 5);
draw_text_transformed(_sw / 2, _sh * 0.3, "Please Choose The Speed Of Your Experience", 1, 1, sin(title_iter / 10) * 5);

for (var i = 0; i < array_length_1d(menu_options); i++) {
	menu_y = _sh / 2 - 50;
	if (menu_index == i)
		draw_text_transformed(_sw / 2, menu_y + ((string_height("A") * 2) * i) + sin(title_iter) * 5, ">" + string(menu_options[i]), 1, 1, 0);	
	else
		draw_text_transformed(_sw / 2, menu_y + ((string_height("A") * 2) * i), " " + string(menu_options[i]), 1, 1, 0);	
}
draw_set_halign(fa_left);


























