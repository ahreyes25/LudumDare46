/// PLACE AT BOTTOM OF DRAW EVENT -- AFTER SPRITE DRAWING HAS HAPPENED

if (gpu_get_ztestenable())
	gpu_set_ztestenable(false);

// Draw Silhouette Alpha Mask
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
var _x1 = x - sprite_xoffset;
var _y1 = y - sprite_yoffset;
var _x2 = _x1 + sprite_width;
var _y2 = _y1 + sprite_height;
draw_rectangle(_x1, _y1, _x2, _y2, false);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);
draw_set_alpha(1);
draw_set_color(c_white);