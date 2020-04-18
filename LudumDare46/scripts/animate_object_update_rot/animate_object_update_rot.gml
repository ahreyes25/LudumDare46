/// @param anim_obj
/// @param rotation

#region Arguments
var _anim	= argument0;
var _rot	= argument1;
#endregion

if (!exists(_anim))
	return false;

if (defined(_rot)) {
	_anim.image_angle = _rot;
	return true;
}
return true;