Lab3
====

#Analysis

#####Pre-Lab
  The pre-lab should have been easy enough, yet I had no clue what I was doing.  I read over each of the vhd files.  Nibble to sseg is easy enough to understand, but what is it used for?  What's a nibble?  What's a sseg?  The nexys2_sseg vhd file is where I really got lost.  Then looking at the top shell file, I sort of saw what was going on.  I read the document so I'm somehow using and expanding off of the elevator idea from CE3.  I have class this afternoon so I'll be sure to ask what the heck is going on.

######Schematic:
![alt text](https://raw.githubusercontent.com/NathanRuprecht/ECE281_Lab3/master/prelab_schematic.png "Lab3 Schematic")
  
#####Lab
C3C Brian Yarbrough kick started the lab for me.  I was having so much trouble just getting started and he showed me how to instantiate the elevator controller the right way.  After that, all the functionalities just happened.  As I finished each part of the lab, I was sure to save the bit files under different names so I would be able to program the board depending on which file I wanted to run.

I changed almost none of the Moore controller shell given to us.  I added what I had to in order for it to work.  I'm sure there was a simpler way of doing it but I just got it to work!

I had to revise my basic Mealy elevator quite a bit.  My first version was under the assumption that once we hit the 4th floor, the next floor would be going down to the 3rd no matter what.  But what if we stayed at the 4th floor?  Then the next floor is continuosly the 4th floor.  Same thing with the 1st floor going up.  I had to make it so the next floor is what floor we would be on once the clock cycled through.

The next part of the lab I had a small problem in was the moving lights portion.  Assigning each LED to a floor for the elevator was easy enough.  But everytime I tried to generate the file, an error came up saying the LEDs were assigned to multiple drivers.  It was an easy fix.  I just had to find where the LEDs were assigned to the clock and comment it out.  After that, worked flawlessly!
