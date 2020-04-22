/// @param room*

var _room = argument_count == 1 ? argument[0] : room;

switch (_room) {
	case rm_forest:		return REGION.FOREST;
	case rm_forest_0:	return REGION.FOREST;
	case rm_desert:		return REGION.DESERT;
	case rm_desert_0:	return REGION.DESERT;
	case rm_glacier:	return REGION.GLACIER;
	case rm_glacier_0:	return REGION.GLACIER;
	case rm_ocean:		return REGION.OCEAN;
	case rm_ocean_0:	return REGION.OCEAN;
}