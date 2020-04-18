if (defined(lock_time_x) && x == xprevious && timer_stopped(timer_lock_x)) {
	timer_set(timer_lock_x, lock_time_x / slow_factor);
	lock_time_x = undefined;
}