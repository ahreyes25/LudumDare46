depth = obj_ui_controller.depth - 1;
var _x = obj_ui_controller.outer_edge_width + 10;
var _y = 10;
draw_text(_x, _y, "--Throw Stats--");
draw_text(_x, _y + 20, "Angle: " + throw_angle);
draw_text(_x, _y + 40, "Distance: " + throw_distance);
draw_text(_x, _y + 60, "Target xy: " + target_xy);
draw_text(_x, _y + 80, "Actual xy: " + actual_xy);
draw_text(_x, _y + 100, "Rod Innacuracy: " + innacuracy);
