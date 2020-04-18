// Move Right
if (key_right && !(key_up || key_down))
	facing = DIR.RIGHT;

// Move Left
if (key_left && !(key_up || key_down))
	facing = DIR.LEFT;

// Move Up
if (key_up && !(key_left || key_right))
	facing = DIR.UP;

// Move Down
if (key_down && !(key_left || key_right))
	facing = DIR.DOWN;

// Move Up Right 
if (key_up && key_right)
	facing = DIR.UP;

// Move Up Left
if (key_up && key_left)
	facing = DIR.UP;

// Move Down Right
if (key_down && key_right)
	facing = DIR.DOWN;

// Move Down Left
if (key_down && key_left)
	facing = DIR.LEFT;