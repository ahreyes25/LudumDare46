depth = obj_ui_controller.depth - 10;
draw_set_color(c_black);
draw_rectangle(xcurr - sprite_get_width(sprite_index) * scale / 2, 0, surface_get_width(application_surface), surface_get_height(application_surface), false);
draw_set_color(global.tint_color);
draw_sprite_ext(sprite_index, 0, xcurr, ycurr, scale, scale, 0, global.tint_color, 1);

var _x = 30;

#region Sell Wait
if (state == "sell_wait") {	
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, 
		"Oh! I could take that \n" + string(item_name) + "\noff your hands for a \nlofty $" + string(item_cost_sell) + ".00?", 2, 2, 0);
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 190, 
		"What do ya say?", 2, 2, 0);	
		
	if (!obj_inventory.index_mini_mini)
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 270, ">YES        NO", 2, 2, 0);	
	else
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 270, " YES       >NO", 2, 2, 0);		
}
#endregion
else if (state == "sell_done") {
	var _text = [
		"Oh ho! I assure you, \nthat is a premium price!",
		"Quite a steal... \nOn your end of course.",
		"I would have paid double.",
		"Nothing to worry about! hoho",
		"no returns.",
		"Anything else I can help \nyou find?",
		"Delighted to ease your \nburden.",
		"Always love my loyal \ncustomers!",
		"Only " + string(bought_count) + " sales so far... \n",
		"Lined my pockets " + string(bought_count) + " times!\nHeh",
		"This is the most pristine \nitem for sale I've\never seen!",
	];
	if (!defined(phrase))
		phrase = irandom(array_length_1d(_text) - 1);
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, _text[phrase], 2, 2, 0);
}
#region Release Wait
else if (state == "release_wait") {	
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, 
		"Are you sure you want to \ndonate your " + string(item_name) + "? \nGet a chance to unlock a \nrandom item?", 2, 2, 0);
		
	if (!obj_inventory.index_mini_mini)
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 220, ">YES        NO", 2, 2, 0);	
	else
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 220, " YES       >NO", 2, 2, 0);		
}
#endregion
else if (state == "release_done") {
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, dono_text, 2, 2, 0);
}
#region Info Wait
if (state == "info_wait") {	
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, 
		"Would you like to hear some \ninformation about your\n" + string(item_name) + "?", 2, 2, 0);
		
	if (!obj_inventory.index_mini_mini)
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 230, ">YES        NO", 2, 2, 0);	
	else
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 230, " YES       >NO", 2, 2, 0);		
}
#endregion
#region Info Done
else if (state == "info_done") {
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, item_info, 2, 2, 0);
}
#endregion
else if (state == "shop_wait") {
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, shop_text, 2, 2, 0);
}
else if (state == "shop_confirm") {
	if (item_type != "fish") {
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, 
			"Are you sure you want to \nbuy a " + string(item_name) + "?", 2, 2, 0);
	}
	else {
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, 
			"Are you sure you want to \nbuy fish info?", 2, 2, 0);
	}
	
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 110, 
		"Only $" + string(item_cost_buy) + ", not a bad price.", 2, 2, 0);
		
	if (!obj_shop.index_mini)
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 190, ">YES        NO", 2, 2, 0);	
	else 
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 190, " YES       >NO", 2, 2, 0);		
}
else if (state == "shop_done") {
	var _text = [
		"What a purchase!",
	];
	if (!defined(phrase))
		phrase = irandom(array_length_1d(_text) - 1);
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, _text[phrase], 2, 2, 0);
}
else if (state == "shop_reject") {
	var _text = [
		"NOT ENOUGH MONEY!",
	];
	if (!defined(phrase))
		phrase = irandom(array_length_1d(_text) - 1);
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, _text[phrase], 2, 2, 0);
}
else if (state == "travel_wait") {
	var _text = [
		"Where can I take ya?",
	];
	if (!defined(phrase))
		phrase = irandom(array_length_1d(_text) - 1);
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, _text[phrase], 2, 2, 0);
}
else if (state == "travel_confirm") {
	draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 30, map_text, 2, 2, 0);
	
	if (!obj_map.index_mini)
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 190, ">YES        NO", 2, 2, 0);	
	else
		draw_text_transformed(xcurr - sprite_get_width(sprite_index) * scale / 2 + _x, ycurr + 190, " YES       >NO", 2, 2, 0);		
}

























