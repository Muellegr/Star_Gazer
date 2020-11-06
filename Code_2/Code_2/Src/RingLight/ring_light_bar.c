#include "ring_light_bar.h"

void init_ring_light_bar_type(ring_light_bar_type *bar) {
    ring_light_bar_gradiant_type gradiant;
	init_ring_light_bar_gradiant(&gradiant, EMPTY_GRADIANT_INDEX, 0, 0, 0);
    for (int i = 0; i < MAX_GRADIANTS; ++i) {
        bar->gradiants[i] = gradiant;
    }
}

bool ring_light_bar_add_gradiant(ring_light_bar_type *bar, ring_light_bar_gradiant_type gradiant)
{
	for (int i = 0; i < MAX_GRADIANTS; ++i) {
		if (bar->gradiants[i].index == EMPTY_GRADIANT_INDEX){
			bar->gradiants[i] = gradiant;
			return true;
		}
	}
	//Did not find a valid position for a gradiant!
	return false;
}

bool ring_light_bar_remove_gradiant(ring_light_bar_type *bar, ring_light_bar_index_type index)
{
	ring_light_bar_gradiant_type gradiant;
	init_ring_light_bar_gradiant(&gradiant, EMPTY_GRADIANT_INDEX, 0, 0, 0);

	bar->gradiants[index] = gradiant;
}

void init_ring_light_bar_gradiant(ring_light_bar_gradiant_type* gradiant, ring_light_bar_index_type i_index, int i_intensity, int i_width, int i_falloff){
	gradiant->intensity = i_intensity;
	gradiant->index = i_index;
	gradiant->falloff = i_falloff;
	gradiant->width = i_width;
}