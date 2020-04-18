/// @description	Get the object that is at the root of a parent tree.

var _object_index	= argument0;
var _object_parent	= object_get_parent(_object_index);
var _parent_index	= noone;

while (_parent_index != -100) {
	_parent_index = object_get_parent(_object_parent);
	
	if (_parent_index != -100)
		_object_parent = _parent_index;
}

return _object_parent;