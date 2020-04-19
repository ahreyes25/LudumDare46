draw_set_font(-1);

// HUD Surface
if (!surface_exists(bg_surface))
	bg_surface = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));

var _ww = surface_get_width(bg_surface);
var _wh = surface_get_height(bg_surface);

draw_set_color(c_black);
draw_set_alpha(1.0);
draw_rectangle(0, 0, outer_edge_width, _wh, false);
draw_rectangle(_ww - outer_edge_width, 0, _ww, _wh, false);

surface_set_target(bg_surface);

image_speed = 0.1;
draw_sprite_tiled_ext(spr_background_scroll, image_index, 0, 0, 1, 1, c_white, 0.5);

// Inner Edge
draw_rectangle(outer_edge_width, 0, outer_edge_width + inner_edge_width, _wh, false);
draw_rectangle(_ww - outer_edge_width - inner_edge_width, 0, _ww - outer_edge_width, _wh, false);
draw_set_color(c_white);
draw_rectangle(outer_edge_width, 0, outer_edge_width + inner_edge_width, _wh, true);
draw_rectangle(_ww - outer_edge_width - inner_edge_width, 0, _ww - outer_edge_width, _wh, true);

gpu_set_blendmode(bm_subtract);
draw_rectangle(outer_edge_width + inner_edge_width + 1, 0, _ww - outer_edge_width - inner_edge_width - 1, _wh, false);
gpu_set_blendmode(bm_normal);

surface_reset_target();

draw_surface(bg_surface, 0, 0);

// Edge Arrows
if (!defined(obj_player.rod.lure)) {
	var _aw = sprite_get_width(spr_arrow_down) / 2;
	var _ah = sprite_get_height(spr_arrow_down) / 2;
	draw_sprite(spr_arrow_up, 0, _ww / 2, _ah + sin(arrow_iter));
	draw_sprite(spr_arrow_right, 0, _ww - outer_edge_width - inner_edge_width - _aw - sin(arrow_iter), _wh / 2);
	draw_sprite(spr_arrow_left, 0, outer_edge_width + inner_edge_width + _aw + sin(arrow_iter), _wh / 2);
	draw_sprite(spr_arrow_down, 0, _ww / 2, _wh - _ah - sin(arrow_iter));
}
























