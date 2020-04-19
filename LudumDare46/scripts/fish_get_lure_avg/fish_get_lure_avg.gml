/// @param fish_enum

var _fish = argument0;

var _avg_chance = 0;
var _count = 0;
for (var i = 1; i < global.lure_total; i++) {
	var _lure_chances = global.lure_data[i, LP.CATCH_CHANCE];
	if (defined(_lure_chances) && array_length_1d(_lure_chances) > 0) {
		_avg_chance += _lure_chances[_fish];
		_count++;
	}
}
return _avg_chance / _count;