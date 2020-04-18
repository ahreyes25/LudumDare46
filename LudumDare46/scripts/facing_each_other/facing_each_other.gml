/// @param inst1* 
/// @oaram inst2

var _inst1 = (argument_count == 2) ? argument[0] : id;
var _inst2 = (argument_count == 2) ? argument[1] : argument[0];

return (
	(facing_left(_inst1) && facing_right(_inst2)) ||
	(facing_left(_inst2) && facing_right(_inst1))
);