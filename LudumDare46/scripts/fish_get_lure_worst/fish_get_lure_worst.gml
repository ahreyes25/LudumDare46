/// @param fish_enum

var _fish = argument0;

var _lowest_chance = 10000;
var _low_lure = LURE.NONE;
for (var i = 1; i < global.lure_total; i++) {
	var _lure_chances = global.lure_data[i, LP.CATCH_CHANCE];
	if (defined(_lure_chances) && array_length_1d(_lure_chances) > 0) {
		if (_lure_chances[_fish] <= _lowest_chance) {
			_lowest_chance = _lure_chances[_fish];
			_low_lure = i;
		}
	}
}
return _low_lure;