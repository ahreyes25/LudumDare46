/// @param lure_enum

var _lure		= argument0;
var _fish_list	= global.region_data[global.region, P.FISH];
var _n_fish		= array_length_1d(_fish_list);
var _won		= ds_list_create();

// Calculate All Fish That Won
for (var i = 0; i < _n_fish; i++) {
	var _fish_i			= _fish_list[i];
	var _catch_chances	= global.lure_data[_lure, LP.CATCH_CHANCE];
	var _catch_chance	= _catch_chances[_fish_i];
	var _rand			= random(_catch_chance);	
	
	if (percent(_rand))
		ds_list_add(_won, [_fish_i, _catch_chance]);
}

// Get Fish With Rarest Chance, Return That One
var _min_chance = 10000;
var _min_fish	= ds_list_create();
for (var i = 0; i < ds_list_size(_won); i++) {
	var _won_data	= _won[| i];
	var _fish		= _won_data[0];
	var _chance		= _won_data[1];
	
	if (_chance <= _min_chance) {
		ds_list_add(_min_fish, _fish);
		_min_chance = _chance;
	}
}

var _n_min_fish = ds_list_size(_min_fish);
var _win_fish	= _n_min_fish > 0 ? _min_fish[| irandom(ds_list_size(_min_fish) - 1)] : FISH.FISH;
ds_list_destroy(_won);
ds_list_destroy(_min_fish);

return _win_fish;