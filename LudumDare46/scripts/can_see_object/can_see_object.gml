/// @param from_instance*
/// @param to_instance

var _from	= argument_count == 2 ? argument[0] : id;
var _to		= argument_count == 2 ? argument[1] : argument[0];

if (!exists(_from))	return false;
if (!exists(_to))	return false;

#region Check For Facing
var _facing = false;

if (sign(_from.image_xscale) == 1 && _to.x > _from.x)
	_facing = true;
else if (sign(_from.image_xscale) == -1 && _to.x > _from.x)
	_facing = false;
else if (sign(_from.image_xscale) == 1 && _to.x < _from.x)
	_facing = false;
else if (sign(_from.image_xscale) == -1 && _to.x < _from.x)
	_facing = true;
#endregion
#region Check For Line of Sight
var _line_of_sight = false;
var _solid = collision_line(_from.x, _from.y, _to.x, _to.y, obj_solid, false, true);

if (_solid == noone)
	_line_of_sight = true;
else if (_solid.object_index == obj_solid)
	_line_of_sight = false;
else
	_line_of_sight = true;
#endregion
#region Check For In Grass
var _in_grass = (
	_to.touching_grass_tall && 
	_to.state = _to.crouch_state
);
#endregion

// Check For Facing & Line of Sight
return (_facing && _line_of_sight && !_in_grass);