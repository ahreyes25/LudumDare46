depth = obj_ui_controller.depth - 10;
draw_set_color(c_black);
draw_rectangle(xcurr - sprite_get_width(sprite_index) * scale / 2, 0, surface_get_width(application_surface), surface_get_height(application_surface), false);
draw_set_color(c_white);
draw_sprite_ext(sprite_index, 0, xcurr, ycurr, scale, scale, 0, c_white, 1);

var _x = 30;

if (state == "sell") {
	sold_phrase = undefined;
	
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, 
		"Oh! I could take that " + string(item_name) + "\noff your hands for a \nmeasly $" + string(item_cost) + ".00?", 2, 2, 0);
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 150, 
		"What do ya say?", 2, 2, 0);	
		
	if (!obj_inventory.index_mini_mini) {
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 230, 
			">YES        NO", 2, 2, 0);	
	}
	else {
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 230, 
			" YES       >NO", 2, 2, 0);		
	}
}
else if (state == "sold") {
	var _text = [
		"Oh ho! I assure you, that is a premuim price!",
		"Quite a steal... \nOn your end of course.",
	];
	if (!defined(sold_phrase))
		sold_phrase = irandom(array_length_1d(_text) - 1);
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, _text[sold_phrase], 2, 2, 0);
}
else if (state == "release") {
	
}
else if (state == "info") {
	
}