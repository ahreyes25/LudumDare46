/// collision_line_point_enemies(x1, y1, x2, y2, obj, owner, prec, notme)
///	Author - YellowAfterLife

/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param obj
/// @param parent
/// @param prec
/// @param notme

var _x1		= argument0;
var _y1		= argument1;
var _x2		= argument2;
var _y2		= argument3;
var _obj	= argument4;
var _parent	= argument5;
var _prec	= argument6;
var _notme	= argument7;

var _rr = collision_line(_x1, _y1, _x2, _y2, _obj, _prec, _notme);
var _rx = _x2;
var _ry = _y2;
if (defined(_rr) && object_get_parent(_rr.owner.object_index) == _parent) {
    var _p0 = 0;
    var _p1 = 1;
	
    repeat (ceil(log2(point_distance(_x1, _y1, _x2, _y2))) + 1) {
        var _np = _p0 + (_p1 - _p0) * 0.5;
        var _nx = _x1 + (_x2 - _x1) * _np;
        var _ny = _y1 + (_y2 - _y1) * _np;
        var _px = _x1 + (_x2 - _x1) * _p0;
        var _py = _y1 + (_y2 - _y1) * _p0;
		
        var _nr = collision_line(_px, _py, _nx, _ny, _obj, _prec, _notme);
        if (defined(_nr)) {
            _rr = _nr;
            _rx = _nx;
            _ry = _ny;
            _p1 = _np;
        } 
		else _p0 = _np;
    }
}
return [_rr, _rx, _ry];
















