/// @param obj

var _obj = (argument_count == 1) ? argument[0] : id;

if (!exists(_obj)) return undefined;

return _obj.sprite_yoffset - _obj.sprite_height / 2;