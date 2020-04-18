/*
	Written By: Alex Reyes aka Gentoo
	Date: 03/27/2020
	Version: 1.0.0
	
	Description:
		- This timer asset is designed to replace GM's built in alarm system with
		more functionality, and no limit to the number of alarms that an object
		instance can have. 
		
	If you have any ideas for additional functionality that you would like to see,
	contact me through one of the following channels:
		- Twitter:	twitter.com/gentoogames
		- Discord:	_gentoo_#7927
		- Twitch:	twitch.tv/gentoogames
	
	Functionality:
		- allow multiple instances of a timers to run simulatenously
		- timer endactions
			- stop
				- normal timer stopping functionality
			- loop
				- the timer automatically restarts once it has finished running
			- reverse
				- the timer will count in the opposite direction once it has finished counting
			- destroy
				- the timer will destroy iteself once it has finished running, meaning it can 
					no longer be started again. It would need to be recreated first.
		- update timers current time
		- pause timers
		- stop timers
		- resume timers
		- restart timers
		- rewind timers
			- change the direction of a timer while it is running
		- timers that count upwards or downwards
		- timer that executes x number of times before destroying itself
		- script execution on upwards, downwards, or both directions of timers
		- execute the timer completion script every x iterations with the modulo property
*/

enum TIMER_PROP
{
	OWNER, INDEX, SPEED, SCRIPT, ENDACTION, MODULO, INSTANCES, MAX_ITERATIONS, EXECUTION_DIR
}	

enum ACTIVE_TIMER_PROP
{
	TIME, DIR, START_TIME, DATA, ACTIVE, ITERATIONS
}

enum TIMER_ENDACTION 
{
	STOP, LOOP, REVERSE, DESTROY, 
}