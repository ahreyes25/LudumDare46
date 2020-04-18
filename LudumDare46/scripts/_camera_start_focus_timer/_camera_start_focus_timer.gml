if (defined(focus_time) && x == xprevious && y == yprevious && timer_stopped(timer_focus_time)) {
	timer_set(timer_focus_time, focus_time / slow_factor);
	focus_time = undefined;
}