/// @param var_identifier
/// @param var_name
/// @param textbox_owner

var _var_identifier	= argument0;
var _var_name		= argument1;
var _owner			= argument2;
var _return_string	= "";

if (!exists(_owner))
	return;

switch (_var_identifier) {
	// Get Input Variable
	case "i":
		/* Find A Better Way To Get the Players Id That Is Talking to Textbox Owner
		// Get Current Player Talking's PID To Pull Input Data
		if (exists(_owner) && _owner.talking && exists(_owner.player_nearby) && _owner.player_nearby.talking) {
			if (_owner.player_nearby.gamepad_plugged_in) 
				var _map  = global.player_data[_owner.player_nearby.pid, PP.GP_NAMES];
			else
				var _map  = global.player_data[_owner.player_nearby.pid, PP.KEY_NAMES];
			_return_string = _map[? _var_name];
		}
		*/
		var _map = global.player_data[obj_player.pid, PP.KEY_NAMES];
		_return_string = _map[? _var_name];
		break;
}

return _return_string;