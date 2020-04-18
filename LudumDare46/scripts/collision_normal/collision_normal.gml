/// @function		collision_normal(x, y, _obj, *radius, *resolution)
/// @argument		{real}				 x			    X Position on a Surface.
/// @argument		{real}				 y			    Y Position on a Surface.
/// @argument		{object_index/id}    obj		    Object or Instance ID.
/// @argument		{notme}				 notme		    Boolean
/// @argument		{real}				 *radius		Radius of the Test Area.
/// @argument		{real}				 *resolution    Resolution of the Test.
///
/// @description	Returns a 2D Surface Normal in Degrees (No Collision = -1) at a Given X&Y, 
///					on or near an instance detected within a circular test area.
///					Makes approximately pi * (_radius * _radius) / (_resolution * _resolution) collision calls.

var _pos_x      = argument[0];
var _pos_y      = argument[1];
var _obj        = argument[2];
var _notme		= argument[3];
var _radius     = (argument_count >= 5) ? argument[4] : 4;
var _resolution = (argument_count == 6) ? argument[5] : 1;
var _nx 		= 0;
var _ny 		= 0;

if (collision_circle(_pos_x, _pos_y, _radius, _obj, true, _notme)) {
    for (var j = _resolution; j <= _radius; j += _resolution) {
        for (var i = 0; i < _radius; i += _resolution) {
            if (point_distance(0, 0, i, j) <= _radius) {
                if (!collision_point(_pos_x + i, _pos_y + j, _obj, true, _notme)) { _nx += i; _ny += j; }
                if (!collision_point(_pos_x + j, _pos_y - i, _obj, true, _notme)) { _nx += j; _ny -= i; }
                if (!collision_point(_pos_x - i, _pos_y - j, _obj, true, _notme)) { _nx -= i; _ny -= j; }
                if (!collision_point(_pos_x - j, _pos_y + i, _obj, true, _notme)) { _nx -= j; _ny += i; }
            }
        }
    }
	
    if (_nx == 0 && _ny == 0)
		return (-1);
	
    return
		point_direction(0, 0, _nx, _ny);
}
else
	return (-1);