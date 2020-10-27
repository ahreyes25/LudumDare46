/// @param percent

var _perc = argument0;

if (_perc == 0) return false;

while (_perc > 1)
	_perc /= 10;

return (random(1) < _perc);