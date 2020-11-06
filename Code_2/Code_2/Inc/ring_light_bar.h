#ifndef SRC_RING_LIGHT_BAR_H_
#define SRC_RING_LIGHT_BAR_H_

#include "main.h"


/*
TODO
	Add gradients
	Add position bar (size, intensity)
	Add movement to these objects (rotate left, rotate right basically)
	Add raster to turn objects into LED light intensities
		Set all to 0
		Add each individual object in a way that clamps brightness at 100

*/
/* Enables multiple objects to cast a pattern around the ring */
#define MAX_GRADIANTS ( 32 )


/*
Simple index type
*/
typedef int ring_light_bar_index_type;

/*

*/
#define GRADIANT_MAX_INDEX 1024
#define EMPTY_GRADIANT_INDEX (GRADIANT_MAX_INDEX + 1)
typedef struct {
    ring_light_bar_index_type index;
    int intensity;
    int width;
    int falloff;
} ring_light_bar_gradiant_type;

void init_ring_light_bar_gradiant(ring_light_bar_gradiant_type* gradiant, ring_light_bar_index_type i_index, int i_intensity, int i_width, int i_falloff);
/*
            0
		 999 1
	750			250
		501 449
		  500
*/

/*
 * The light bar contains individual points that have a base intensity and a width.
 * This type will than be rasterized onto the available ring light pixels.
 */
typedef struct {
    ring_light_bar_gradiant_type gradiants[32];
} ring_light_bar_type;


//ring_light_bar_index_type ring_light_bar_index_add(ring_light_bar_index_type index, int add);

void init_ring_light_bar_type(ring_light_bar_type *bar);
bool ring_light_bar_add_gradiant(ring_light_bar_type *bar, ring_light_bar_gradiant_type gradiant);
bool ring_light_bar_remove_gradiant(ring_light_bar_type *bar, ring_light_bar_index_type index);
#endif