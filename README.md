****WIP****

PCB, Case, and Parts are currently ordered.  
Programming has not started.  

# Star_Gazer

An electrical engineering summer & fall project.  
A handheld device with a simple interface.  Point it at the sky and it will display information on constellations, stars, and planets

This is mainly an excuse to get back into electrical engineering after spending several months in a software engineering internship.  The focus of this was to gain more experiance with PCBs, digging into a microcontroller to flash & debug, and reinforce knowledge from my internship with programming.

The [ Bill Of Materials ](https://github.com/Muellegr/Star_Gazer/wiki)

The [ Schematic ](https://github.com/Muellegr/Star_Gazer/blob/master/Documentation/StarGazer_Schematics.pdf)

The [ PCB Layers ](https://github.com/Muellegr/Star_Gazer/blob/master/Documentation)

# DESIGN AND GOALS
## Push into scary unknowns
My classes have given me nice microcontroller boards with nicely formatted instructions with how to use and program with it.  Selecting a microcontroller, putting it on a PCB, and flashing it are all things I haven't had any experiance with.  It was a big scary unknown - jumping into it with this project lets me get experiance with it.
I also wanted to look at signal integrity but this was a smaller goal. I have several long awkward SPI/I2C traces which may allow for some learning.
### HARDWARE GOALS
* Place and program a microcontroller - I've only used nice premade boards, never my own.
* Unique shape and case - My previous project failed at the case design due to covid19.  I wanted to do something without the standard square PCB and case.
* Making an easier to assemble device. A preference was made to larger components, however some are small by necessity. 
### SOFTWARE GOALS
* C with databases - I wanted to deal with working with a database. The database will be kept simple and may end up becoming a packed array.  
* Testing - I want to create my own unit testing system for this for some parts. This is a low priority and meant to be more of a proof of concept.
* Microcontroller setup - Microcontrollers have manuals with hundreds of pages for using them.  This is intimidating.  

### Device
[ Phones have a ton of options for star gazing apps ](https://www.tomsguide.com/round-up/best-stargazing-apps)
These turn your phone into a sort of window into the night sky - hold it over a constellation, and the screen will show the constellation.  This project stems from those kinds of apps.
This isn't a replacement, nor is it a product.  This will cost more and be much less capable. But it will teach me a lot of things!

![Front of PCB](https://github.com/Muellegr/Star_Gazer/blob/master/Documentation/Images/Ring_Design.png) ![Back of PCB](https://github.com/Muellegr/Star_Gazer/blob/master/Documentation/Images/Ring_Design_Back.png)

The shape of the device is ring like, where the inside of ring glows in the direction of constellations and important stars. As the device 'aims' at one of these object, the ring light will change shape and intensity to indicate distance and location.  When aimed at the object, a button can be pressed which will display information about this object (name, description..) on a small screen on the device.

[ Basic but more indepth description on finding orientation. ](https://github.com/Muellegr/Star_Gazer/wiki/Basic-idea-behind-orientation)
