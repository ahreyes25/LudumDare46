/// @param fadeout_object
/// @param x
/// @param y

#region Arguments
var _fade	= argument0;
var _x		= argument1;
var _y		= argument2;
#endregion

if (!exists(_fade))
	return false;

if (defined(_x)) {
	_fade.x = _x;
	
	if (defined(_fade.owner))
		if (instance_exists(_fade.owner))
			_fade.dif_x = _fade.owner.x - _x;
}
	
if (defined(_y)) {
	_fade.y = _y;
	
	if (defined(_fade.owner))
		if (instance_exists(_fade.owner))
			_fade.dif_y = _fade.owner.y - _y;
}
return true;