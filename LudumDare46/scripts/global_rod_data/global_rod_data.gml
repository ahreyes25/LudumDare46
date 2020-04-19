enum ROD {
	NONE,
	ROD_BASIC_1,
}

enum RP {
	NAME,
	SPRITE,
	DESC,
	COST_SELL,
	COST_BUY,
	INFO,
	ACCURACY,
	SHAKE,
	SHAKE_INTERVAL,
	LAUNCH_SPEED,
	DURABILITY,
}

#region No Rod
global.rod_data[ROD.NONE, RP.SPRITE]			= undefined;
global.rod_data[ROD.NONE, RP.NAME]				= undefined;
global.rod_data[ROD.NONE, RP.DESC]				= undefined;
global.rod_data[ROD.NONE, RP.COST_SELL]			= undefined;
global.rod_data[ROD.NONE, RP.COST_BUY]			= undefined;
global.rod_data[ROD.NONE, RP.INFO]				= undefined;
global.rod_data[ROD.NONE, RP.ACCURACY]			= undefined;
global.rod_data[ROD.NONE, RP.SHAKE]				= undefined;
global.rod_data[ROD.NONE, RP.SHAKE_INTERVAL]	= undefined;
global.rod_data[ROD.NONE, RP.LAUNCH_SPEED]		= undefined;
global.rod_data[ROD.NONE, RP.DURABILITY]		= undefined;
#endregion

global.rod_data[ROD.ROD_BASIC_1, RP.SPRITE]			= spr_rod_basic_1;	
global.rod_data[ROD.ROD_BASIC_1, RP.NAME]			= "Basic Rod";		
global.rod_data[ROD.ROD_BASIC_1, RP.DESC]			= "Kind of just looks like an old stick...";		
global.rod_data[ROD.ROD_BASIC_1, RP.COST_SELL]		= 0;		
global.rod_data[ROD.ROD_BASIC_1, RP.COST_BUY]		= 10;		
global.rod_data[ROD.ROD_BASIC_1, RP.INFO]			= "Well the wood seems to be\nsome kind of oak.....";		
global.rod_data[ROD.ROD_BASIC_1, RP.ACCURACY]		= 0.1;				// chances that a wiggle will happen
global.rod_data[ROD.ROD_BASIC_1, RP.SHAKE]			= 30;				// how much it will wiggle
global.rod_data[ROD.ROD_BASIC_1, RP.SHAKE_INTERVAL]	= 30;				// how often it will wiggle
global.rod_data[ROD.ROD_BASIC_1, RP.LAUNCH_SPEED]	= 8;				// how fast lure will launch
global.rod_data[ROD.ROD_BASIC_1, RP.DURABILITY]		= 1;				// how many bounces allowed

global.rod_total = array_height_2d(global.rod_data);