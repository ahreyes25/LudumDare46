/// @param fish

var _fish		= argument0;
var _reward		= instance_create_layer(0, 0, "Controllers", obj_catch_reward);
_reward.fish	= _fish;
_reward.name	= global.fish_data[_fish, FP.NAME];
_reward.sprite	= global.fish_data[_fish, FP.SPRITE];
_reward.rarity	= global.fish_data[_fish, FP.RARITY];

return _reward;