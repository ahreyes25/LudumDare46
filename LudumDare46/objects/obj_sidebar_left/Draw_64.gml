depth = obj_ui_controller.depth - 1;

var _x = obj_ui_controller.outer_edge_width + 10;
var _y = 40;
var _scale = 2;

// Money
draw_sprite_ext(spr_coin_ui, coin_image_index, _x, _y, _scale, _scale, 0, c_white, 1);
draw_set_valign(fa_center);
draw_text_transformed(_x + sprite_get_width(spr_coin_ui) + 30, _y + sprite_get_height(spr_coin_ui), 
	": " + string(money), _scale, _scale, 0);
draw_set_valign(fa_top);