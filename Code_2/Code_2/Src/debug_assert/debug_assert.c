/*
 * Allows for debugging in a more clean fashion.
 *
 */
#include "debug_assert.h"
#define DEBUG_ENABLED 1

#ifdef DEBUG_ENABLED

void debug_assert(){
	force_assert();
}

bool debug_assert_if( bool b)
{
	if (b){ force_assert(); return true;}
	return false;
}

#else

void debug_assert(){;}

bool debug_assert_cond(bool b){;}
#endif


void force_assert()
{
	chip_led_red_on();
	chip_led_red_on();
}
