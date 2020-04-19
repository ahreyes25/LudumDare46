depth = obj_ui_controller.depth - 1;

var _x = obj_ui_controller.outer_edge_width + 30;
var _y = 40;
var _scale = 2;

// Money
draw_sprite_ext(spr_coin_ui, coin_image_index, _x - 20, _y, _scale, _scale, 0, global.tint_color, 1);
draw_set_valign(fa_center);
draw_text_transformed(_x + sprite_get_width(spr_coin_ui) + 10, _y + sprite_get_height(spr_coin_ui), 
	": " + string(money), _scale, _scale, 0);
draw_set_valign(fa_top);

// Inventory
var _iy = _y + sprite_get_height(spr_coin_ui) + 100;
draw_sprite_ext(spr_chest, 0, _x, _iy, _scale, _scale, 0, global.tint_color, 1);

// Shop
var _sy = _iy + sprite_get_height(spr_chest) + 100;
draw_sprite_ext(spr_shop_ui, 0, _x, _sy, _scale, _scale, 0, global.tint_color, 1);

// Library
var _ly = _sy + sprite_get_height(spr_chest) + 110;
draw_sprite_ext(spr_library_ui, 0, _x, _ly, _scale, _scale, 0, global.tint_color, 1);

// Pause
var _scale = 1;
draw_sprite_ext(spr_home, 0, _x + obj_ui_controller.inner_edge_width - sprite_get_width(spr_home) - 45,
	surface_get_height(application_surface) - sprite_get_height(spr_home) * _scale - 10, _scale, _scale, 0, global.tint_color, 1);