var _n_rods	= 1;
var _won	= ds_list_create();

// Calculate All Rods That Won
for (var i = 1; i <= _n_rods; i++) {
	var _rand = global.lure_data[i, RP.UNLOCK_CHANCE];
	if (percent(_rand))
		ds_list_add(_won, [i, _rand]);
}

// Get Rod With Rarest Chance, Return That One
var _min_chance = 100000000;
var _min_rod	= undefined;
for (var i = 0; i < ds_list_size(_won); i++) {
	var _won_data	= _won[| i];
	var _lure		= _won_data[0];
	var _chance		= _won_data[1];
	
	if (_chance <= _min_chance) {
		_min_rod	= _lure;
		_min_chance = _chance;
	}
}
ds_list_destroy(_won);

return defined(_min_rod) ? _min_rod : ROD.NONE;