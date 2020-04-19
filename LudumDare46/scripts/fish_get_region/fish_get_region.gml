/// @param fish_enum
/// @param list

var _fish = argument0;
var _list = argument1;

for (var i = 0; i < global.region_total; i++) {
	var _region_fish_data = global.region_data[i, P.FISH];
	for (var j = 0; j < array_length_1d(_region_fish_data); j++) {
		if (_region_fish_data[j] == _fish) {
			ds_list_add(_list, i);
			break;
		}
	}
}