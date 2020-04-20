depth = obj_ui_controller.depth - 1000;

// Top 
var _scale = 0.5;
var _x1 = tile_x + sprite_get_width(spr_banner) * _scale;
var _y1 = tile_y + -30 - sin(bob_iter) * 20;
draw_sprite_ext(spr_banner, 0, _x1, _y1, _scale, _scale, 0, global.tint_color, 1);
draw_sprite_ext(spr_banner, 0, _x1 - sprite_get_width(spr_banner) * _scale, _y1, _scale, _scale, 0, global.tint_color, 1);

var _x2 = tile_x + sprite_get_width(spr_banner) * _scale + 47;
var _y2 = tile_y + -30 - sin(bob_iter) * 20;
draw_sprite_ext(spr_banner, 0, _x2, _y2, _scale, _scale, 0, global.tint_color, 1);
draw_sprite_ext(spr_banner, 0, _x2 - sprite_get_width(spr_banner) * _scale, _y2, _scale, _scale, 0, global.tint_color, 1);

// Bottom 
var _scale = 0.5;
var _x1 = tile_x + sprite_get_width(spr_banner) * _scale;
var _y1 = tile_y + surface_get_height(application_surface) + 30 + sin(bob_iter) * 20;
draw_sprite_ext(spr_banner, 0, _x1, _y1, _scale, -_scale, 0, global.tint_color, 1);
draw_sprite_ext(spr_banner, 0, _x1 - sprite_get_width(spr_banner) * _scale, _y1, _scale, -_scale, 0, global.tint_color, 1);

var _x2 = tile_x + sprite_get_width(spr_banner) * _scale + 47;
var _y2 = tile_y + surface_get_height(application_surface) + 30 + sin(bob_iter) * 20;
draw_sprite_ext(spr_banner, 0, _x2, _y2, _scale, -_scale, 0, global.tint_color, 1);
draw_sprite_ext(spr_banner, 0, _x2 - sprite_get_width(spr_banner) * _scale, _y2, _scale, -_scale, 0, global.tint_color, 1);