depth = obj_ui_controller.depth - 10;
draw_set_color(c_black);
draw_rectangle(xcurr - sprite_get_width(sprite_index) * scale / 2, 0, surface_get_width(application_surface), surface_get_height(application_surface), false);
draw_set_color(c_white);
draw_sprite_ext(sprite_index, 0, xcurr, ycurr, scale, scale, 0, c_white, 1);

var _x = 30;

if (state == "sell_wait") {	
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
else if (state == "sell_done") {
	var _text = [
		"Oh ho! I assure you, \nthat is a premium price!",
		"Quite a steal... \nOn your end of course.",
		"I would have paid double.",
		"Nothing to worry about! hoho",
		"sorry... no returns.",
		"Anything else I can help \nyou find?",
		"Delighted to ease your \nburden.",
		"Always love my loyal \ncustomers!",
		"Only " + string(bought_count) + " sales so far... \n",
		"Lined my pockets " + string(bought_count) + " times! Heh",
		"This is the most pristine \nitem for sale I've\never seen!",
	];
	if (!defined(phrase))
		phrase = irandom(array_length_1d(_text) - 1);
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, _text[phrase], 2, 2, 0);
}
else if (state == "release_wait") {	
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, 
		"Are you sure you want to release \nyour " + string(item_name) + "? You will not be able \nto get it back.", 2, 2, 0);
		
	if (!obj_inventory.index_mini_mini) {
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 190, 
			">YES        NO", 2, 2, 0);	
	}
	else {
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 190, 
			" YES       >NO", 2, 2, 0);		
	}
}
else if (state == "release_done") {
	var _text = [
		"Uhh... thanks, I guess?",
		"I'd like to say this is \ngoing to a good cause...",
		"I'll see what I can do \nwith this...",
	];
	if (!defined(phrase))
		phrase = irandom(array_length_1d(_text) - 1);
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, _text[phrase], 2, 2, 0);
}
if (state == "info_wait") {	
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, 
		"Would you like to hear some \ninformation about your " + string(item_name) + "?", 2, 2, 0);
		
	if (!obj_inventory.index_mini_mini) {
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 230, 
			">YES        NO", 2, 2, 0);	
	}
	else {
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 230, 
			" YES       >NO", 2, 2, 0);		
	}
}
else if (state == "info_done") {
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, item_info, 2, 2, 0);
}