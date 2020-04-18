/// @param fadeout_object
/// @param rotation

#region Arguments
var _fade	= argument0;
var _rot	= argument1;
#endregion

if (!exists(_fade))
	return false;

if (defined(_rot)) {
	_fade.image_angle = _rot;
	return true;
}
return true;