/// @param fish_enum

var _fish = argument0;

var _highest_chance = 0;
var _high_lure = LURE.NONE;
for (var i = 1; i < global.lure_total; i++) {
	var _lure_chances = global.lure_data[i, LP.CATCH_CHANCE];
	if (defined(_lure_chances) && array_length_1d(_lure_chances) > 0) {
		if (_lure_chances[_fish] >= _highest_chance) {
			_highest_chance = _lure_chances[_fish];
			_high_lure = i;
		}
	}
}
return _high_lure;