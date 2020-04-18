/// @description	Create obj_animate_object
///					This object is created simply to animate a sprite x times, and then destroys itself.
///					Custom draw means that we override the draw event with a custom script passed in.

/// @param x
/// @param y
/// @param sprite_index
/// @param depth
/// @param image_xscale
/// @param owner
/// @param iterations
/// @param stick
/// @param draw_script
/// @param state_bind*

#region Arguments
var _x		= argument[0];
var _y		= argument[1];
var _sprite	= argument[2];
var _depth	= argument[3];
var _scale	= argument[4];
var _owner	= argument[5];
var _iters  = argument[6];
var _stick	= argument[7];
var _draw	= argument[8];

if (argument_count == 10)
	var _state = argument[9];
else
	var _state = undefined;
#endregion
	
var _anim			= instance_create_depth(_x, _y, depth, obj_animate_object);
_anim.sprite_index	= _sprite;
_anim.max_iters		= _iters;
_anim.image_xscale	= _scale;
_anim.owner			= _owner;
_anim.depth			= _depth;
_anim.stick			= _stick;
_anim.draw_script	= _draw;
_anim.state_bind	= _state;
return _anim;