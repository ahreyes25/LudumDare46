/// @param anim_obj
/// @param x
/// @param y

#region Arguments
var _anim	= argument0;
var _x		= argument1;
var _y		= argument2;
#endregion

if (!exists(_anim))
	return false;

if (defined(_x)) {
	_anim.x = _x;
	
	if (defined(_anim.owner))
		if (instance_exists(_anim.owner))
			_anim.dif_x = _anim.owner.x - _x;
}
	
if (defined(_y)) {
	_anim.y = _y;
	
	if (defined(_anim.owner))
		if (instance_exists(_anim.owner))
			_anim.dif_y = _anim.owner.y - _y;
}
return true;