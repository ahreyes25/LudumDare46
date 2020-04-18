/// @param ds_stack

var _stack = argument0;

if (ds_stack_size(_stack) <= 0) return undefined;

var _stack_copy	= ds_stack_create();
ds_stack_copy(_stack_copy, _stack);

var _value = ds_stack_pop(_stack_copy);
ds_stack_destroy(_stack_copy);

return _value;