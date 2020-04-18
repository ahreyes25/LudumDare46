/// @description Reset Spawn Timer

spawned++;

// Reset Timer
if (spawn && spawned < spawn_count)
	timer_set(timer_spawn_interval, spawn_interval);
else {
	spawn = false;
	
	if (destroy)
		instance_destroy();
}