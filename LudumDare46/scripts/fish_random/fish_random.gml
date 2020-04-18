/// @param lure_enum

var _lure	= argument0;
var _n_fish = 1;
var _won	= ds_list_create();

// Calculate All Fish That Won
for (var i = 1; i <= _n_fish; i++) {
	// Get Chance Based Off Type of Rod
	switch (_lure) {
		case LURE.LURE_BASIC_1:	var _rand = irandom(global.fish_data[i, FP.CHANCE_LURE_BASIC_1]);	break;
	}
	if (irandom(_rand) == 0)
		ds_list_add(_won, [i, _rand]);
}

// Get Fish With Rarest Chance, Return That One
var _min_chance = 100000000;
var _min_fish	= undefined;
for (var i = 0; i < ds_list_size(_won); i++) {
	var _won_data	= _won[| i];
	var _fish		= _won_data[0];
	var _chance		= _won_data[1];
	
	if (_chance <= _min_chance) {
		_min_fish	= _fish;
		_min_chance = _chance;
	}
}
ds_list_destroy(_won);

return defined(_min_fish) ? _min_fish : FISH.NONE;