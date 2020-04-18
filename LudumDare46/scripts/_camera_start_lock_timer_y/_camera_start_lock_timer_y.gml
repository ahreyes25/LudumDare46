if (defined(lock_time_y) && y == yprevious && timer_stopped(timer_lock_y)) {
	timer_set(timer_lock_y, lock_time_y / slow_factor);
	lock_time_y = undefined;
}