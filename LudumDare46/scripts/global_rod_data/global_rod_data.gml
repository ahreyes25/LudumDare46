enum ROD {
	NONE,
	ROD_BASIC_1,
	ROD_BASIC_2,
	ROD_1,
	ROD_2,
	ROD_3,
	ROD_4,
	ROD_5
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
global.rod_data[ROD.NONE, RP.ACCURACY]			= undefined;		// chances that a wiggle will happen
global.rod_data[ROD.NONE, RP.SHAKE]				= undefined;		// how much it will wiggle			
global.rod_data[ROD.NONE, RP.SHAKE_INTERVAL]	= undefined;		// how often it will wiggle
global.rod_data[ROD.NONE, RP.LAUNCH_SPEED]		= undefined;		// how fast lure will launch
global.rod_data[ROD.NONE, RP.DURABILITY]		= undefined;		// how many bounces allowed
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

global.rod_data[ROD.ROD_BASIC_2, RP.SPRITE]			= spr_rod_basic_1;	
global.rod_data[ROD.ROD_BASIC_2, RP.NAME]			= "Basic Rod 2";		
global.rod_data[ROD.ROD_BASIC_2, RP.DESC]			= "Kind of just looks like an old stick...";		
global.rod_data[ROD.ROD_BASIC_2, RP.COST_SELL]		= 0;		
global.rod_data[ROD.ROD_BASIC_2, RP.COST_BUY]		= 10;		
global.rod_data[ROD.ROD_BASIC_2, RP.INFO]			= "Well the wood seems to be\nsome kind of oak.....";		
global.rod_data[ROD.ROD_BASIC_2, RP.ACCURACY]		= 0.1;				// chances that a wiggle will happen
global.rod_data[ROD.ROD_BASIC_2, RP.SHAKE]			= 30;				// how much it will wiggle
global.rod_data[ROD.ROD_BASIC_2, RP.SHAKE_INTERVAL]	= 30;				// how often it will wiggle
global.rod_data[ROD.ROD_BASIC_2, RP.LAUNCH_SPEED]	= 8;				// how fast lure will launch
global.rod_data[ROD.ROD_BASIC_2, RP.DURABILITY]		= 1;				// how many bounces allowed

global.rod_data[ROD.ROD_1, RP.SPRITE]				= spr_rod_1;			
global.rod_data[ROD.ROD_1, RP.NAME]					= "Simple Rod";
global.rod_data[ROD.ROD_1, RP.DESC]					= "A generic rod- but sturdy.";
global.rod_data[ROD.ROD_1, RP.COST_SELL]			= 0;
global.rod_data[ROD.ROD_1, RP.COST_BUY]				= 50;
global.rod_data[ROD.ROD_1, RP.INFO]					= "This rod was a hand-me down through many generations. Probably.";
global.rod_data[ROD.ROD_1, RP.ACCURACY]				= 0.1;				// chances that a wiggle will happen
global.rod_data[ROD.ROD_1, RP.SHAKE]				= 30;				// how much it will wiggle			
global.rod_data[ROD.ROD_1, RP.SHAKE_INTERVAL]		= 30;				// how often it will wiggle
global.rod_data[ROD.ROD_1, RP.LAUNCH_SPEED]			= 8;				// how fast lure will launch
global.rod_data[ROD.ROD_1, RP.DURABILITY]			= 1;				// how many bounces allowed

global.rod_data[ROD.ROD_2, RP.SPRITE]				= spr_rod_2;			
global.rod_data[ROD.ROD_2, RP.NAME]					= "Fancy Rod";
global.rod_data[ROD.ROD_2, RP.DESC]					= "This rod has many adornments and accessories. It probably works well.";
global.rod_data[ROD.ROD_2, RP.COST_SELL]			= 100;
global.rod_data[ROD.ROD_2, RP.COST_BUY]				= 250;
global.rod_data[ROD.ROD_2, RP.INFO]					= "The accessories are sure to help you catch fish faster, more efficiently, and with greather vigor.";
global.rod_data[ROD.ROD_2, RP.ACCURACY]				= 0.1;				// chances that a wiggle will happen
global.rod_data[ROD.ROD_2, RP.SHAKE]				= 30;				// how much it will wiggle			
global.rod_data[ROD.ROD_2, RP.SHAKE_INTERVAL]		= 30;				// how often it will wiggle
global.rod_data[ROD.ROD_2, RP.LAUNCH_SPEED]			= 8;				// how fast lure will launch
global.rod_data[ROD.ROD_2, RP.DURABILITY]			= 1;				// how many bounces allowed

global.rod_data[ROD.ROD_3, RP.SPRITE]				= spr_rod_3;			
global.rod_data[ROD.ROD_3, RP.NAME]					= "Feathered Rod";
global.rod_data[ROD.ROD_3, RP.DESC]					= "A rod embowed with calming spirits.";
global.rod_data[ROD.ROD_3, RP.COST_SELL]			= 250;
global.rod_data[ROD.ROD_3, RP.COST_BUY]				= 500;
global.rod_data[ROD.ROD_3, RP.INFO]					= "You can sense the power of many ancient spirits helping you when you wield this rod.";
global.rod_data[ROD.ROD_3, RP.ACCURACY]				= 0.1;				// chances that a wiggle will happen
global.rod_data[ROD.ROD_3, RP.SHAKE]				= 30;				// how much it will wiggle			
global.rod_data[ROD.ROD_3, RP.SHAKE_INTERVAL]		= 30;				// how often it will wiggle
global.rod_data[ROD.ROD_3, RP.LAUNCH_SPEED]			= 8;				// how fast lure will launch
global.rod_data[ROD.ROD_3, RP.DURABILITY]			= 1;				// how many bounces allowed

global.rod_data[ROD.ROD_4, RP.SPRITE]				= spr_rod_4;			
global.rod_data[ROD.ROD_4, RP.NAME]					= "Steal Rod";
global.rod_data[ROD.ROD_4, RP.DESC]					= "This rod is said to steal fish right of the water.";
global.rod_data[ROD.ROD_4, RP.COST_SELL]			= 600;
global.rod_data[ROD.ROD_4, RP.COST_BUY]				= 1200;
global.rod_data[ROD.ROD_4, RP.INFO]					= "Surely this rod will help increase your chances of finding rare fish!";
global.rod_data[ROD.ROD_4, RP.ACCURACY]				= 0.1;				// chances that a wiggle will happen
global.rod_data[ROD.ROD_4, RP.SHAKE]				= 30;				// how much it will wiggle			
global.rod_data[ROD.ROD_4, RP.SHAKE_INTERVAL]		= 30;				// how often it will wiggle
global.rod_data[ROD.ROD_4, RP.LAUNCH_SPEED]			= 8;				// how fast lure will launch
global.rod_data[ROD.ROD_4, RP.DURABILITY]			= 1;				// how many bounces allowed

global.rod_data[ROD.ROD_5, RP.SPRITE]				= spr_rod_5;			
global.rod_data[ROD.ROD_5, RP.NAME]					= "Magic Rod";
global.rod_data[ROD.ROD_5, RP.DESC]					= "Enchanted with mighty spells.";
global.rod_data[ROD.ROD_5, RP.COST_SELL]			= 1000;
global.rod_data[ROD.ROD_5, RP.COST_BUY]				= 2500;
global.rod_data[ROD.ROD_5, RP.INFO]					= "You don't know what magic this rod wields, but you know it is fantastic! \nWhat might you catch with this mighty tool?";
global.rod_data[ROD.ROD_5, RP.ACCURACY]				= 0.1;		// chances that a wiggle will happen
global.rod_data[ROD.ROD_5, RP.SHAKE]				= 30;		// how much it will wiggle			
global.rod_data[ROD.ROD_5, RP.SHAKE_INTERVAL]		= 30;		// how often it will wiggle
global.rod_data[ROD.ROD_5, RP.LAUNCH_SPEED]			= 8;		// how fast lure will launch
global.rod_data[ROD.ROD_5, RP.DURABILITY]			= 1;		// how many bounces allowed

global.rod_total = array_height_2d(global.rod_data);