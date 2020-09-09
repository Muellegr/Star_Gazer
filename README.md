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
## PURPOSE
The main purpose of this is to jump back into electrical engineering after a software engineering internship at Garmin.  
I wanted to do something to reinforce some of the things I learned in that internship while also having to deal with scary new pcb things.
### HARDWARE 
* Place and program a microcontroller - I've only used nice premade boards, never my own.
* Unique shape and case - My previous project failed at the case design due to covid19.  I wanted to do something without the standard square PCB and case.
* Making an easier to assemble device. A preference was made to larger components, however some are small by necessity. 
### SOFTWARE
* C with databases - I wanted to deal with working with a database. The database will be kept simple and may end up being a packed array.  
* Testing - I want to create my own testing system for this for some parts. This is a low priority and meant to be more of a proof of concept.
* Microcontroller setup - Microcontrollers have manuals with hundreds of pages for using them.  This is intimidating.


# DESIGN
In the future there may even be pictures here.

[ Phones have a ton of options for star gazing apps ](https://www.tomsguide.com/round-up/best-stargazing-apps)
These turn your phone into a sort of window into the night sky - hold it over a constellation, and the screen will show the constellation.  This project stems from those kinds of apps.
This isn't a replacement, nor is it a product.  This will cost more and be much less capable. But it will teach me a lot of things!

The basic decine is a can-shaped device with a hole in the middle, probably around the radius of a common soup can with half the diameter being hollow.
The user will 'aim' through this hole.  As they aim, a ring of LEDs will faintly glow in the direction of constellations nearby.  As you aim closer, the LEDs will perform an animation so the user can gauage distance.  When an object is in view, the ring will have a uniform glow around it.  
At this point the user can press the 'snap' button.  This will capture what the device is looking at and update the screen with this.
The screen (located below the hole as the user looks through it) will display information on the object.  This will be kept pretty basic as the screen is small.
The user will be able to use the joystick to move around this screen - this allows for some flexibility when it comes to how much text to display.

There are a couple major ideas I wanted to use with this.
* Limited 'snaps'.  The user will have a limited number of uses, probably per 24 hours.  This is like a camera using a roll of film.  This number will be displayed on the screen.
* Slow screen.  I want to make the screen look like it has to do something special to update, sort of like how paper-displays have needed to flash on and off, or how old printers went back and fourth.  I'm unsure how I want to do this, but I don't want to do a fast screen refresh.  
* Limited commands.  I wanted to avoid having 50 million commands for everything.  A single button fulfills this quite well.
* Discovery.  The limited number of 'snaps' means you don't want to waste them.  But you aren't exactly sure what you're looking at.  

### COMPONENTS

**GPS** - Used to get the position on the planet and time of day.  

**GYROMETER** - A 6 axis gyrometer gives a stable orientation of the device facing.

**MAGNOMETER** - Provides additional orientation data

Together, these 3 data sources can combine into an orientation which reliably points into the universe. 
If we know where in the universe we are pointing, we can check if we are looking at a place which has constellations or stars.
