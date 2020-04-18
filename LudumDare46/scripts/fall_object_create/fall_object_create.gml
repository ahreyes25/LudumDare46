/// @param x
/// @param y
/// @param sprite_index
/// @param image_speed
/// @param scale
/// @param fall_dist
/// @param fall_speed
/// @param rotation
/// @param fade_speed
/// @param fade_wait
/// @param draw_shadow?
/// @param depth_sort
/// @param state*

var _x				= argument[0];
var _y				= argument[1];
var _sprite_index	= argument[2];
var _image_speed	= argument[3];
var _scale			= argument[4];
var _fall_dist		= argument[5];
var _fall_speed		= argument[6];
var _rotation		= argument[7];
var _fade_speed		= argument[8];
var _fade_wait		= argument[9];
var _shadow			= argument[10];
var _depth_sort		= argument[11];
var _state_bind		= argument_count > 13 ? argument[12] : undefined;

var _fall = instance_create_depth(_x, _y, depth, obj_fall_object);
_fall.sprite_index		= _sprite_index;
_fall.image_speed		= _image_speed;
_fall.scale				= _scale;
_fall.fall_dist			= 0;
_fall.fall_dist_max		= _fall_dist;
_fall.fall_speed		= _fall_speed;
_fall.rotation			= _rotation;
_fall.fade_speed		= _fade_speed;
_fall.fade_wait			= _fade_wait;
_fall.draw_shadow		= _shadow;
_fall.depth_sorts		= _depth_sort;
_fall.state_bind		= _state_bind;

return _fall;