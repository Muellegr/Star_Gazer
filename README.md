****WIP****
# Star_Gazer

An electrical engineering summer project.  
A handheld device with a simple interface.  Point it at the sky and it will display information on constellations, stars, and planets

This is mainly an excuse to get back into PCBs, learn about GPS, throw down some micro controllers and program them.  

TODO (missing from readme)
* Concept images
* Component names, list
* Bigger reasoning into individual parts
* More concepts

# MAJOR GOALS

### COMPONENTS

**GPS** - Used to get the position on the planet and time of day.  

**GYROMETER** - A 6 axis gyrometer gives a stable orientation of the device facing.

**MAGNOMETER** - Provides additional orientation data

Together, these 3 data sources can combine into an orientation which reliably points into the universe. 
If we know where in the universe we are pointing, we can check if we are looking at a place which has constellations or stars.
