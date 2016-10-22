ECE281_Lab2
===========

#Analysis (Prelab)
 The 1bit adder was a pretty simple part of this lab.  The prelab went smoothly and everything was completed on time.  The truth table and waveform were used together to confirm that the code was right and produced the correct results.

##Analysis (End Result)
The actual lab caused a great deal of problems.  Making the circuit so that the Cout became the Cin took a little while until I finally made internal wires that were the signals.  Once I got that part down, the 4bit adder finished up quickly.  The ucf was backwards at first having the LSB showing up in the MSB spot on the nexys 2.  Once that was fixed, a complete func check of the adder showed that it worked.

The subtractor portion caused the greatest difficulty and problems.  My first approach was to try and use an if statement.  My thought process was a simple if statement saying if the button was being pressed, do the subtraction.  I had no clue why it wasn't working until I talked to Dr. Neebel and he explained why loops cannot be used in the code.  It can be used in the testbench since it has a clock, but not in the code that will be going on the board since everything happens all at once.  After I found that out, my next approach was using a MUX.  If the button was being pressed, the signal would be B-not and the intial Cin would be 1.  This got me my 2s complement I needed for subtraction.  With the new Bin, the adders worked just as before and added the two 4bit numbers.  If the button was not being pressed, it sent the Bin signal with an initial Cin of 0 to run addition of the 4bit numbers.  Dr. Neebel also let me look in one of his books to make sure my syntax for the MUX was done correctly.  Dr. Neebel was the one to tell our class that the overflow detector should be when C3 and C4 are different.

The MUX implimentation only took about 15 minutes.  Once the code was done, I synthesized it and did a func check with Dr. Neebel being the final say so on if it all worked or not.  He approved and I got his initials saying it worked!!!


Documentation:
 - - Dr. Neebel told me about loops not working and to try a MUX instead.  He is also the one that told our class how to do the overflow detection.
 - - C3C Brian Yarbrough tried helping me on my testbench.  To him, it looked like it should work and he suggested checking which libraries are being used.  Even after checking that, it still would not work properly.

#####4bit Adder/Subtractor Schematic:
![alt text](https://raw2.github.com/NathanRuprecht/ECE281_Lab2/master/Lab2_Schematic.png "4bit Schematic")


#####1bit Truth Table:
![alt text](https://raw2.github.com/NathanRuprecht/ECE281_Lab2/master/truth_table.png "Truth Table")


#####Waveform:
![alt text](https://raw2.github.com/NathanRuprecht/ECE281_Lab2/master/1bitadder.png "Testbench Waveform")
