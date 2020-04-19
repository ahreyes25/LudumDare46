// Screen Flash
if (screen_flash_alpha > 0) {
	draw_set_alpha(screen_flash_alpha);
	draw_set_color(screen_flash_color);
	draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
	draw_set_alpha(1.0);
	draw_set_color(global.tint_color);
}

if (cutscene) {
	cutscene_bar_pos += 3;

	if (cutscene_bar_pos >= 100)
		cutscene_bar_pos = 100;
} 
else {
	cutscene_bar_pos -= 6;
	
	if(cutscene_bar_pos <= 0)
		cutscene_bar_pos = 0;
}

if (cutscene_bar_pos > 0) {
	draw_set_alpha(1.0);
	draw_rectangle_color(0, 0, view_wport[0], cutscene_bar_pos, c_black, c_black, c_black, c_black, 0);
	draw_rectangle_color(0, view_hport[0], view_wport[0], view_hport[0] - cutscene_bar_pos, c_black, c_black, c_black, c_black, 0);
}