/// @param obj

var _obj = argument_count == 1 ? argument[0] : id;

if (!exists(_obj)) return undefined;

return abs(_obj.bbox_right - _obj.bbox_left) + 1;