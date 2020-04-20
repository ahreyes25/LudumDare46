enum FISH {
	NONE,
	CLAM,
	CLOWN,
	CARP,
	DIAMOND,
	TONY,
	SHARK,
	MOAWK,
	SINKER,
	SHREDDER,
	GUPPY,
	CHEDDAR,
	WHALE,
	KOI,
	SPIKY,
	LIP,
	TERROR,
	BONES,
	GLUB,
	LOBSTER,
	OCTO,
	GIRAFFE,
	GARY,
	SHRIMP,
	STAR,
	SEEKER,
	HEART,
	METROID,
	SKULL,
	GHOST,
	RIGOR
}

enum FP {
	NAME,
	SPRITE,
	DESC,
	REGION,
	RARITY,
	INFO,
	COST_SELL,
	COST_BUY,
	
	// Rod Props
	ZONE_SIZE_ROD_BASIC_1,
	ZONE_SPEED_ROD_BASIC_1,
}

#region No Fish
global.fish_data[FISH.NONE, FP.NAME]						= undefined;
global.fish_data[FISH.NONE, FP.SPRITE]						= undefined;
global.fish_data[FISH.NONE, FP.DESC]						= undefined;
global.fish_data[FISH.NONE, FP.REGION]						= undefined;
global.fish_data[FISH.NONE, FP.RARITY]						= undefined;
global.fish_data[FISH.NONE, FP.COST_SELL]					= undefined;
global.fish_data[FISH.NONE, FP.COST_BUY]					= undefined;
global.fish_data[FISH.NONE, FP.INFO]						= undefined;
global.fish_data[FISH.NONE, FP.ZONE_SIZE_ROD_BASIC_1]		= undefined;
global.fish_data[FISH.NONE, FP.ZONE_SPEED_ROD_BASIC_1]		= undefined;
#endregion

//global.fish_data[FISH.FISH, FP.NAME]						= "Fish";
//global.fish_data[FISH.FISH, FP.SPRITE]						= spr_fish_1;
//global.fish_data[FISH.FISH, FP.DESC]						= "The Fishiest of Fish";
//global.fish_data[FISH.FISH, FP.REGION]						= REGION.FOREST;
//global.fish_data[FISH.FISH, FP.RARITY]						= "Common";
//global.fish_data[FISH.FISH, FP.COST_SELL]					= 10;
//global.fish_data[FISH.FISH, FP.COST_BUY]					= 10;
//global.fish_data[FISH.FISH, FP.INFO]						= "This fish is the fishiest \nof all fish, quite fishy \nin all ways. Indeed!";
//global.fish_data[FISH.FISH, FP.ZONE_SIZE_ROD_BASIC_1]		= 30;
//global.fish_data[FISH.FISH, FP.ZONE_SPEED_ROD_BASIC_1]		= 1;

//global.fish_data[FISH.OCTUPUS, FP.NAME]						= "Octopus";
//global.fish_data[FISH.OCTUPUS, FP.SPRITE]					= spr_octopus_1;
//global.fish_data[FISH.OCTUPUS, FP.DESC]						= "";
//global.fish_data[FISH.OCTUPUS, FP.REGION]					= REGION.FOREST;
//global.fish_data[FISH.OCTUPUS, FP.RARITY]					= "Rare";
//global.fish_data[FISH.OCTUPUS, FP.COST_SELL]				= 1000;
//global.fish_data[FISH.OCTUPUS, FP.COST_BUY]					= 1000;
//global.fish_data[FISH.OCTUPUS, FP.INFO]						= "";
//global.fish_data[FISH.OCTUPUS, FP.ZONE_SIZE_ROD_BASIC_1]	= 10;
//global.fish_data[FISH.OCTUPUS, FP.ZONE_SPEED_ROD_BASIC_1]	= 2;

//global.fish_data[FISH.CRAB, FP.NAME]						= "Crab";
//global.fish_data[FISH.CRAB, FP.SPRITE]						= spr_crab_1;
//global.fish_data[FISH.CRAB, FP.DESC]						= "";
//global.fish_data[FISH.CRAB, FP.REGION]						= REGION.FOREST;
//global.fish_data[FISH.CRAB, FP.RARITY]						= "Kind Of Rare";
//global.fish_data[FISH.CRAB, FP.COST_SELL]					= 100;
//global.fish_data[FISH.CRAB, FP.COST_BUY]					= 100;
//global.fish_data[FISH.CRAB, FP.INFO]						= "";
//global.fish_data[FISH.CRAB, FP.ZONE_SIZE_ROD_BASIC_1]		= 10;
//global.fish_data[FISH.CRAB, FP.ZONE_SPEED_ROD_BASIC_1]		= 3;

global.fish_data[FISH.CLAM, FP.NAME]						= "Manila Clam";
global.fish_data[FISH.CLAM, FP.SPRITE]						= spr_clam;
global.fish_data[FISH.CLAM, FP.DESC]						= "There might be a pearl!";
global.fish_data[FISH.CLAM, FP.REGION]						= undefined;
global.fish_data[FISH.CLAM, FP.RARITY]						= "Extremely Common";
global.fish_data[FISH.CLAM, FP.COST_SELL]					= 10;
global.fish_data[FISH.CLAM, FP.COST_BUY]					= 10;
global.fish_data[FISH.CLAM, FP.INFO]						= "Normally worthless; but sometimes a real treasure!";
global.fish_data[FISH.CLAM, FP.ZONE_SIZE_ROD_BASIC_1]		= 40;
global.fish_data[FISH.CLAM, FP.ZONE_SPEED_ROD_BASIC_1]		= .5;

global.fish_data[FISH.CLOWN, FP.NAME]						= "Clown Fish";
global.fish_data[FISH.CLOWN, FP.SPRITE]						= spr_fish_1;
global.fish_data[FISH.CLOWN, FP.DESC]						= "It's searching for something...";
global.fish_data[FISH.CLOWN, FP.REGION]						= undefined;
global.fish_data[FISH.CLOWN, FP.RARITY]						= "Common";
global.fish_data[FISH.CLOWN, FP.COST_SELL]					= 25;
global.fish_data[FISH.CLOWN, FP.COST_BUY]					= 25;
global.fish_data[FISH.CLOWN, FP.INFO]						= "When you put it on a stage, it's not that funny.";
global.fish_data[FISH.CLOWN, FP.ZONE_SIZE_ROD_BASIC_1]		= 40;
global.fish_data[FISH.CLOWN, FP.ZONE_SPEED_ROD_BASIC_1]		= .5;

global.fish_data[FISH.CARP, FP.NAME]						= "A Carp Diem";
global.fish_data[FISH.CARP, FP.SPRITE]						= spr_fish_2;
global.fish_data[FISH.CARP, FP.DESC]						= "What a big boy!";
global.fish_data[FISH.CARP, FP.REGION]						= undefined;
global.fish_data[FISH.CARP, FP.RARITY]						= "Common";
global.fish_data[FISH.CARP, FP.COST_SELL]					= 30;
global.fish_data[FISH.CARP, FP.COST_BUY]					= 30;
global.fish_data[FISH.CARP, FP.INFO]						= "This is a generic fish. Nothing spectacular. It is heavy though.";
global.fish_data[FISH.CARP, FP.ZONE_SIZE_ROD_BASIC_1]		= 35;
global.fish_data[FISH.CARP, FP.ZONE_SPEED_ROD_BASIC_1]		= 1;

global.fish_data[FISH.DIAMOND, FP.NAME]						= "Diamond Fish";
global.fish_data[FISH.DIAMOND, FP.SPRITE]					= spr_fish_3;
global.fish_data[FISH.DIAMOND, FP.DESC]						= "Not used for blacksmithing.";
global.fish_data[FISH.DIAMOND, FP.REGION]					= undefined;
global.fish_data[FISH.DIAMOND, FP.RARITY]					= "Common";
global.fish_data[FISH.DIAMOND, FP.COST_SELL]				= 30;
global.fish_data[FISH.DIAMOND, FP.COST_BUY]					= 30;
global.fish_data[FISH.DIAMOND, FP.INFO]						= "A gold fish with diamond reflection. It's not valuable, despite it's name.";
global.fish_data[FISH.DIAMOND, FP.ZONE_SIZE_ROD_BASIC_1]	= 35;
global.fish_data[FISH.DIAMOND, FP.ZONE_SPEED_ROD_BASIC_1]	= 1;

global.fish_data[FISH.TONY, FP.NAME]						= "Tony";
global.fish_data[FISH.TONY, FP.SPRITE]						= spr_fish_4;
global.fish_data[FISH.TONY, FP.DESC]						= "Likes long walks on the beach.";
global.fish_data[FISH.TONY, FP.REGION]						= undefined;
global.fish_data[FISH.TONY, FP.RARITY]						= "Uncommon";
global.fish_data[FISH.TONY, FP.COST_SELL]					= 45;
global.fish_data[FISH.TONY, FP.COST_BUY]					= 45;
global.fish_data[FISH.TONY, FP.INFO]						= "He's looking for a sole mate. Just one.";
global.fish_data[FISH.TONY, FP.ZONE_SIZE_ROD_BASIC_1]		= 35;
global.fish_data[FISH.TONY, FP.ZONE_SPEED_ROD_BASIC_1]		= 1.5;

global.fish_data[FISH.SHARK, FP.NAME]						= "Shark Fish";
global.fish_data[FISH.SHARK, FP.SPRITE]						= spr_fish_5;
global.fish_data[FISH.SHARK, FP.DESC]						= "Oooh- scary!";
global.fish_data[FISH.SHARK, FP.REGION]						= undefined;
global.fish_data[FISH.SHARK, FP.RARITY]						= "Uncommon- like shark attacks.";
global.fish_data[FISH.SHARK, FP.COST_SELL]					= 100;
global.fish_data[FISH.SHARK, FP.COST_BUY]					= 100;
global.fish_data[FISH.SHARK, FP.INFO]						= "The apex predator of all fish in these waters. Watch out!";
global.fish_data[FISH.SHARK, FP.ZONE_SIZE_ROD_BASIC_1]		= 30;
global.fish_data[FISH.SHARK, FP.ZONE_SPEED_ROD_BASIC_1]		= 1.5;

global.fish_data[FISH.MOAWK, FP.NAME]						= "Mo'Awk Fish";
global.fish_data[FISH.MOAWK, FP.SPRITE]						= spr_fish_6;
global.fish_data[FISH.MOAWK, FP.DESC]						= "Al Capone has nothing on this fish.";
global.fish_data[FISH.MOAWK, FP.REGION]						= undefined;
global.fish_data[FISH.MOAWK, FP.RARITY]						= "1-in-100";
global.fish_data[FISH.MOAWK, FP.COST_SELL]					= 250;
global.fish_data[FISH.MOAWK, FP.COST_BUY]					= 250;
global.fish_data[FISH.MOAWK, FP.INFO]						= "Some say it's mohawk is used in ancient, sacred rituals.";
global.fish_data[FISH.MOAWK, FP.ZONE_SIZE_ROD_BASIC_1]		= 30;
global.fish_data[FISH.MOAWK, FP.ZONE_SPEED_ROD_BASIC_1]		= 2;

global.fish_data[FISH.SINKER, FP.NAME]						= "Sinker Fish";
global.fish_data[FISH.SINKER, FP.SPRITE]					= spr_fish_7;
global.fish_data[FISH.SINKER, FP.DESC]						= "What the hell is this?";
global.fish_data[FISH.SINKER, FP.REGION]					= undefined;
global.fish_data[FISH.SINKER, FP.RARITY]					= "All-Too-Common";
global.fish_data[FISH.SINKER, FP.COST_SELL]					= 25;
global.fish_data[FISH.SINKER, FP.COST_BUY]					= 25;
global.fish_data[FISH.SINKER, FP.INFO]						= "It's not breathing... and I think it's dead.";
global.fish_data[FISH.SINKER, FP.ZONE_SIZE_ROD_BASIC_1]		= 30;
global.fish_data[FISH.SINKER, FP.ZONE_SPEED_ROD_BASIC_1]	= 2;

global.fish_data[FISH.SHREDDER, FP.NAME]					= "Shredder";
global.fish_data[FISH.SHREDDER, FP.SPRITE]					= spr_fish_8;
global.fish_data[FISH.SHREDDER, FP.DESC]					= "I think I saw this fish bite a turtle...";
global.fish_data[FISH.SHREDDER, FP.REGION]					= undefined;
global.fish_data[FISH.SHREDDER, FP.RARITY]					= "Uncommon";
global.fish_data[FISH.SHREDDER, FP.COST_SELL]				= 75;
global.fish_data[FISH.SHREDDER, FP.COST_BUY]				= 75;
global.fish_data[FISH.SHREDDER, FP.INFO]					= "You question why this fish smells like sewage... and pizza.";
global.fish_data[FISH.SHREDDER, FP.ZONE_SIZE_ROD_BASIC_1]	= 30;
global.fish_data[FISH.SHREDDER, FP.ZONE_SPEED_ROD_BASIC_1]	= 2.5;

global.fish_data[FISH.GUPPY, FP.NAME]						= "Guppy";
global.fish_data[FISH.GUPPY, FP.SPRITE]						= spr_fish_9;
global.fish_data[FISH.GUPPY, FP.DESC]						= "I don't know anything about guppies.";
global.fish_data[FISH.GUPPY, FP.REGION]						= undefined;
global.fish_data[FISH.GUPPY, FP.RARITY]						= "Extremely Common";
global.fish_data[FISH.GUPPY, FP.COST_SELL]					= 13;
global.fish_data[FISH.GUPPY, FP.COST_BUY]					= 13;
global.fish_data[FISH.GUPPY, FP.INFO]						= "It's gup-tacular!";
global.fish_data[FISH.GUPPY, FP.ZONE_SIZE_ROD_BASIC_1]		= 35;
global.fish_data[FISH.GUPPY, FP.ZONE_SPEED_ROD_BASIC_1]		= 1;

global.fish_data[FISH.CHEDDAR, FP.NAME]						= "Cheddar Fish";
global.fish_data[FISH.CHEDDAR, FP.SPRITE]					= spr_fish_10;
global.fish_data[FISH.CHEDDAR, FP.DESC]						= "I'm getting pretty hungry.";
global.fish_data[FISH.CHEDDAR, FP.REGION]					= undefined;
global.fish_data[FISH.CHEDDAR, FP.RARITY]					= "Infinite";
global.fish_data[FISH.CHEDDAR, FP.COST_SELL]				= 1;
global.fish_data[FISH.CHEDDAR, FP.COST_BUY]					= 1;
global.fish_data[FISH.CHEDDAR, FP.INFO]						= "Found in bulk at your local grocery store.";
global.fish_data[FISH.CHEDDAR, FP.ZONE_SIZE_ROD_BASIC_1]	= 60;
global.fish_data[FISH.CHEDDAR, FP.ZONE_SPEED_ROD_BASIC_1]	= 1;

global.fish_data[FISH.WHALE, FP.NAME]						= "Whale Fish";
global.fish_data[FISH.WHALE, FP.SPRITE]						= spr_fish_11;
global.fish_data[FISH.WHALE, FP.DESC]						= "Whale done!";
global.fish_data[FISH.WHALE, FP.REGION]						= undefined;
global.fish_data[FISH.WHALE, FP.RARITY]						= "Rare";
global.fish_data[FISH.WHALE, FP.COST_SELL]					= 400;
global.fish_data[FISH.WHALE, FP.COST_BUY]					= 400;
global.fish_data[FISH.WHALE, FP.INFO]						= "This fish is just misunderstood; it's actually just big boned.";
global.fish_data[FISH.WHALE, FP.ZONE_SIZE_ROD_BASIC_1]		= 20;
global.fish_data[FISH.WHALE, FP.ZONE_SPEED_ROD_BASIC_1]		= 3.5;

global.fish_data[FISH.KOI, FP.NAME]							= "Koi";
global.fish_data[FISH.KOI, FP.SPRITE]						= spr_fish_12;
global.fish_data[FISH.KOI, FP.DESC]							= "Sought after for it's shimmering scales.";
global.fish_data[FISH.KOI, FP.REGION]						= undefined;
global.fish_data[FISH.KOI, FP.RARITY]						= "Rare";
global.fish_data[FISH.KOI, FP.COST_SELL]					= 350;
global.fish_data[FISH.KOI, FP.COST_BUY]						= 350;
global.fish_data[FISH.KOI, FP.INFO]							= "It might be koi, but it isnt shy.";
global.fish_data[FISH.KOI, FP.ZONE_SIZE_ROD_BASIC_1]		= 30;
global.fish_data[FISH.KOI, FP.ZONE_SPEED_ROD_BASIC_1]		= 3;

global.fish_data[FISH.SPIKY, FP.NAME]						= "Spiky Boi";
global.fish_data[FISH.SPIKY, FP.SPRITE]						= spr_fish_13;
global.fish_data[FISH.SPIKY, FP.DESC]						= "Ouch-- sharp!";
global.fish_data[FISH.SPIKY, FP.REGION]						= undefined;
global.fish_data[FISH.SPIKY, FP.RARITY]						= "Extra Rare";
global.fish_data[FISH.SPIKY, FP.COST_SELL]					= 500;
global.fish_data[FISH.SPIKY, FP.COST_BUY]					= 500;
global.fish_data[FISH.SPIKY, FP.INFO]						= "This fish is Extra Rare-- it's impossible to cook all the way.";
global.fish_data[FISH.SPIKY, FP.ZONE_SIZE_ROD_BASIC_1]		= 20;
global.fish_data[FISH.SPIKY, FP.ZONE_SPEED_ROD_BASIC_1]		= 4;

global.fish_data[FISH.LIP, FP.NAME]							= "Lip Fish";
global.fish_data[FISH.LIP, FP.SPRITE]						= spr_fish_14;
global.fish_data[FISH.LIP, FP.DESC]							= "I've seen this in my nightmares.";
global.fish_data[FISH.LIP, FP.REGION]						= undefined;
global.fish_data[FISH.LIP, FP.RARITY]						= "Ultra Rare";
global.fish_data[FISH.LIP, FP.COST_SELL]					= 620;
global.fish_data[FISH.LIP, FP.COST_BUY]						= 620;
global.fish_data[FISH.LIP, FP.INFO]							= "Instructions unclear...";
global.fish_data[FISH.LIP, FP.ZONE_SIZE_ROD_BASIC_1]		= 20;
global.fish_data[FISH.LIP, FP.ZONE_SPEED_ROD_BASIC_1]		= 5;

global.fish_data[FISH.TERROR, FP.NAME]						= "Terrorizer";
global.fish_data[FISH.TERROR, FP.SPRITE]					= spr_fish_15;
global.fish_data[FISH.TERROR, FP.DESC]						= "This isn't supposed to be here!";
global.fish_data[FISH.TERROR, FP.REGION]					= undefined;
global.fish_data[FISH.TERROR, FP.RARITY]					= "Ultra Rare";
global.fish_data[FISH.TERROR, FP.COST_SELL]					= 1000;
global.fish_data[FISH.TERROR, FP.COST_BUY]					= 1000;
global.fish_data[FISH.TERROR, FP.INFO]						= "It emits a strange glow. \nFrom the depths of the ocean, this fish emerged. I wouldn't touch it.";
global.fish_data[FISH.TERROR, FP.ZONE_SIZE_ROD_BASIC_1]		= 17;
global.fish_data[FISH.TERROR, FP.ZONE_SPEED_ROD_BASIC_1]	= 6;

global.fish_data[FISH.BONES, FP.NAME]						= "Fish Bones";
global.fish_data[FISH.BONES, FP.SPRITE]						= spr_fish_bones;
global.fish_data[FISH.BONES, FP.DESC]						= "It looks like somebody already ate this!";
global.fish_data[FISH.BONES, FP.REGION]						= undefined;
global.fish_data[FISH.BONES, FP.RARITY]						= "Uncommon";
global.fish_data[FISH.BONES, FP.COST_SELL]					= 1;
global.fish_data[FISH.BONES, FP.COST_BUY]					= 10;
global.fish_data[FISH.BONES, FP.INFO]						= "It looks like somebody already ate this!";
global.fish_data[FISH.BONES, FP.ZONE_SIZE_ROD_BASIC_1]		= 70;
global.fish_data[FISH.BONES, FP.ZONE_SPEED_ROD_BASIC_1]		= 1;

global.fish_data[FISH.GLUB, FP.NAME]						= "Glub Glub";
global.fish_data[FISH.GLUB, FP.SPRITE]						= spr_jellyfish;
global.fish_data[FISH.GLUB, FP.DESC]						= "Squishy!";
global.fish_data[FISH.GLUB, FP.REGION]						= undefined;
global.fish_data[FISH.GLUB, FP.RARITY]						= "Uncommon";
global.fish_data[FISH.GLUB, FP.COST_SELL]					= 35;
global.fish_data[FISH.GLUB, FP.COST_BUY]					= 35;
global.fish_data[FISH.GLUB, FP.INFO]						= "Making a peanut-butter-and-jelly sandwich from this will shock you!";
global.fish_data[FISH.GLUB, FP.ZONE_SIZE_ROD_BASIC_1]		= 40;
global.fish_data[FISH.GLUB, FP.ZONE_SPEED_ROD_BASIC_1]		= 2;

global.fish_data[FISH.LOBSTER, FP.NAME]						= "Lobstess Monster";
global.fish_data[FISH.LOBSTER, FP.SPRITE]					= spr_lobster;
global.fish_data[FISH.LOBSTER, FP.DESC]						= "So- the legends are true...";
global.fish_data[FISH.LOBSTER, FP.REGION]					= undefined;
global.fish_data[FISH.LOBSTER, FP.RARITY]					= "Extremely Rare";
global.fish_data[FISH.LOBSTER, FP.COST_SELL]				= 2500;
global.fish_data[FISH.LOBSTER, FP.COST_BUY]					= 2500;
global.fish_data[FISH.LOBSTER, FP.INFO]						= "This is a big lobster; the biggest. \nI've seen no bigger. \nThe largest ever found. \nNo lobster is bigger than this. \nBigly.";
global.fish_data[FISH.LOBSTER, FP.ZONE_SIZE_ROD_BASIC_1]	= 150;
global.fish_data[FISH.LOBSTER, FP.ZONE_SPEED_ROD_BASIC_1]	= 3;

global.fish_data[FISH.OCTO, FP.NAME]						= "Octopussy";
global.fish_data[FISH.OCTO, FP.SPRITE]						= spr_octopus;
global.fish_data[FISH.OCTO, FP.DESC]						= "WHOAH!";
global.fish_data[FISH.OCTO, FP.REGION]						= undefined;
global.fish_data[FISH.OCTO, FP.RARITY]						= "Uncommon";
global.fish_data[FISH.OCTO, FP.COST_SELL]					= 100;
global.fish_data[FISH.OCTO, FP.COST_BUY]					= 100;
global.fish_data[FISH.OCTO, FP.INFO]						= "It emits a faint and strange sound... \"weee...boo...\"";
global.fish_data[FISH.OCTO, FP.ZONE_SIZE_ROD_BASIC_1]		= 15;
global.fish_data[FISH.OCTO, FP.ZONE_SPEED_ROD_BASIC_1]		= 4;

global.fish_data[FISH.GIRAFFE, FP.NAME]						= "Seagiraffe";
global.fish_data[FISH.GIRAFFE, FP.SPRITE]					= spr_seahorse;
global.fish_data[FISH.GIRAFFE, FP.DESC]						= "You were exepecting a horse.";
global.fish_data[FISH.GIRAFFE, FP.REGION]					= undefined;
global.fish_data[FISH.GIRAFFE, FP.RARITY]					= "Rare";
global.fish_data[FISH.GIRAFFE, FP.COST_SELL]				= 25;
global.fish_data[FISH.GIRAFFE, FP.COST_BUY]					= 25;
global.fish_data[FISH.GIRAFFE, FP.INFO]						= "It has 57 permutations.";
global.fish_data[FISH.GIRAFFE, FP.ZONE_SIZE_ROD_BASIC_1]	= 25;
global.fish_data[FISH.GIRAFFE, FP.ZONE_SPEED_ROD_BASIC_1]	= 1;

global.fish_data[FISH.GARY, FP.NAME]						= "Gary";
global.fish_data[FISH.GARY, FP.SPRITE]						= spr_shellSlug;
global.fish_data[FISH.GARY, FP.DESC]						= "He lives in a pineapple.";
global.fish_data[FISH.GARY, FP.REGION]						= undefined;
global.fish_data[FISH.GARY, FP.RARITY]						= "Uncommon";
global.fish_data[FISH.GARY, FP.COST_SELL]					= 66;
global.fish_data[FISH.GARY, FP.COST_BUY]					= 65;
global.fish_data[FISH.GARY, FP.INFO]						= "He carries a sponge. Does he like to clean?";
global.fish_data[FISH.GARY, FP.ZONE_SIZE_ROD_BASIC_1]		= 20;
global.fish_data[FISH.GARY, FP.ZONE_SPEED_ROD_BASIC_1]		= 2;

global.fish_data[FISH.SHRIMP, FP.NAME]						= "Bumble Shrimp";
global.fish_data[FISH.SHRIMP, FP.SPRITE]					= spr_shrimp;
global.fish_data[FISH.SHRIMP, FP.DESC]						= "Good in a gumbo.";
global.fish_data[FISH.SHRIMP, FP.REGION]					= undefined;
global.fish_data[FISH.SHRIMP, FP.RARITY]					= "Common";
global.fish_data[FISH.SHRIMP, FP.COST_SELL]					= 15;
global.fish_data[FISH.SHRIMP, FP.COST_BUY]					= 15;
global.fish_data[FISH.SHRIMP, FP.INFO]						= "If it had wings, I would not eat it.";
global.fish_data[FISH.SHRIMP, FP.ZONE_SIZE_ROD_BASIC_1]		= 40;
global.fish_data[FISH.SHRIMP, FP.ZONE_SPEED_ROD_BASIC_1]	= 1;

global.fish_data[FISH.STAR, FP.NAME]						= "S.T.A.R.";
global.fish_data[FISH.STAR, FP.SPRITE]						= spr_starfish;
global.fish_data[FISH.STAR, FP.DESC]						= "Strategic Tactical Assault Ravioli";
global.fish_data[FISH.STAR, FP.REGION]						= undefined;
global.fish_data[FISH.STAR, FP.RARITY]						= "Common";
global.fish_data[FISH.STAR, FP.COST_SELL]					= 50;
global.fish_data[FISH.STAR, FP.COST_BUY]					= 50;
global.fish_data[FISH.STAR, FP.INFO]						= "These rain down from the skies.";
global.fish_data[FISH.STAR, FP.ZONE_SIZE_ROD_BASIC_1]		= 20;
global.fish_data[FISH.STAR, FP.ZONE_SPEED_ROD_BASIC_1]		= 2.5;

global.fish_data[FISH.SEEKER, FP.NAME]						= "Seeker";
global.fish_data[FISH.SEEKER, FP.SPRITE]					= spr_unidentified_1;
global.fish_data[FISH.SEEKER, FP.DESC]						= "What is it looking for?";
global.fish_data[FISH.SEEKER, FP.REGION]					= undefined;
global.fish_data[FISH.SEEKER, FP.RARITY]					= "Ultra Rare";
global.fish_data[FISH.SEEKER, FP.COST_SELL]					= 1500;
global.fish_data[FISH.SEEKER, FP.COST_BUY]					= 1500;
global.fish_data[FISH.SEEKER, FP.INFO]						= "Isn't there a movie with these things-- like giant eyeballs?";
global.fish_data[FISH.SEEKER, FP.ZONE_SIZE_ROD_BASIC_1]		= 10;
global.fish_data[FISH.SEEKER, FP.ZONE_SPEED_ROD_BASIC_1]	= 10;

global.fish_data[FISH.HEART, FP.NAME]						= "Ricardo";
global.fish_data[FISH.HEART, FP.SPRITE]						= spr_unidentified_2;
global.fish_data[FISH.HEART, FP.DESC]						= "It wants your soul.";
global.fish_data[FISH.HEART, FP.REGION]						= undefined;
global.fish_data[FISH.HEART, FP.RARITY]						= "One-Of-A-Kind";
global.fish_data[FISH.HEART, FP.COST_SELL]					= 5000;
global.fish_data[FISH.HEART, FP.COST_BUY]					= 5000;
global.fish_data[FISH.HEART, FP.INFO]						= "It moves slow... but dont let it catch you.";
global.fish_data[FISH.HEART, FP.ZONE_SIZE_ROD_BASIC_1]		= 5;
global.fish_data[FISH.HEART, FP.ZONE_SPEED_ROD_BASIC_1]		= 10;

global.fish_data[FISH.METROID, FP.NAME]						= "Metro ID";
global.fish_data[FISH.METROID, FP.SPRITE]					= spr_unidentified_3;
global.fish_data[FISH.METROID, FP.DESC]						= "From Out-Of-This-World";
global.fish_data[FISH.METROID, FP.REGION]					= undefined;
global.fish_data[FISH.METROID, FP.RARITY]					= "Extremely Rare";
global.fish_data[FISH.METROID, FP.COST_SELL]				= 1250;
global.fish_data[FISH.METROID, FP.COST_BUY]					= 1250;
global.fish_data[FISH.METROID, FP.INFO]						= "I think it wants to go home.";
global.fish_data[FISH.METROID, FP.ZONE_SIZE_ROD_BASIC_1]	= 10;
global.fish_data[FISH.METROID, FP.ZONE_SPEED_ROD_BASIC_1]	= 6;

global.fish_data[FISH.SKULL, FP.NAME]						= "Skulltular";
global.fish_data[FISH.SKULL, FP.SPRITE]						= spr_unidentified_4;
global.fish_data[FISH.SKULL, FP.DESC]						= "I wouldn't swim when these are in the water!";
global.fish_data[FISH.SKULL, FP.REGION]						= undefined;
global.fish_data[FISH.SKULL, FP.RARITY]						= "Extremely Rare";
global.fish_data[FISH.SKULL, FP.COST_SELL]					= 1750;
global.fish_data[FISH.SKULL, FP.COST_BUY]					= 1750;
global.fish_data[FISH.SKULL, FP.INFO]						= "Have you tried hitting it with a slingshot?";
global.fish_data[FISH.SKULL, FP.ZONE_SIZE_ROD_BASIC_1]		= 8;
global.fish_data[FISH.SKULL, FP.ZONE_SPEED_ROD_BASIC_1]		= 5;

global.fish_data[FISH.GHOST, FP.NAME]						= "Ghost Fish";
global.fish_data[FISH.GHOST, FP.SPRITE]						= spr_unidentified_5;
global.fish_data[FISH.GHOST, FP.DESC]						= "I feel cold...";
global.fish_data[FISH.GHOST, FP.REGION]						= undefined;
global.fish_data[FISH.GHOST, FP.RARITY]						= "Rare";
global.fish_data[FISH.GHOST, FP.COST_SELL]					= 175;
global.fish_data[FISH.GHOST, FP.COST_BUY]					= 175;
global.fish_data[FISH.GHOST, FP.INFO]						= "Some fish must have died here!";
global.fish_data[FISH.GHOST, FP.ZONE_SIZE_ROD_BASIC_1]		= 20;
global.fish_data[FISH.GHOST, FP.ZONE_SPEED_ROD_BASIC_1]		= .1;

global.fish_data[FISH.RIGOR, FP.NAME]						= "Rigormortis";
global.fish_data[FISH.RIGOR, FP.SPRITE]						= spr_unidentified_6;
global.fish_data[FISH.RIGOR, FP.DESC]						= "I have no idea what this thing is.";
global.fish_data[FISH.RIGOR, FP.REGION]						= undefined;
global.fish_data[FISH.RIGOR, FP.RARITY]						= "Extremely Rare";
global.fish_data[FISH.RIGOR, FP.COST_SELL]					= 2250;
global.fish_data[FISH.RIGOR, FP.COST_BUY]					= 2250;
global.fish_data[FISH.RIGOR, FP.INFO]						= "Its eyes are closed, but you can sense that it sees you.";
global.fish_data[FISH.RIGOR, FP.ZONE_SIZE_ROD_BASIC_1]		= 6;
global.fish_data[FISH.RIGOR, FP.ZONE_SPEED_ROD_BASIC_1]		= 12;

global.fish_total = array_height_2d(global.fish_data);
