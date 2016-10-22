ECE281_Lab5
===========

##Part 1: PRISM Setup and First Program
Program 1 for this lab was not all that difficult.  It was just a matter of following the steps carefully.  The only difference I did was cusing '22' instead of '23' for the clockbus_sig.  Quite a few people seemed to have problems using 23 but worked just fine with 22.  Once I heard about that problem, I switched mine over and it worked flawlessly.  I demod the code in class and got checked off for functionality.

Below is a screenshot of the PRISM code to be discussed: 

![alt text](https://raw.githubusercontent.com/NathanRuprecht/ECE281_Lab5/master/prism_pic.png "PRISM_Pic")

First I had to know what it was actually doing.  We're loading the value '8' into the accumulator, adding 1 to it, outputing it to output3, checking to see if it is less than 0, then looping.  What we saw in the output was 9, A, B, C, D, E, F, 0.  Then it was looping at the end so it stayed at 0.  What I was thinking was the 2s complement of all the values.  They can all be considered negative.  So the values were -8, -7, -6, -5, -4, -3, -2, -1, 0.  Finally looping forever once it is 0.  So 'JN' read all the negative values (proving true and jumping to "loop") until the value was zero.  In which case the code continued to be in an infinite loop when jumping to "end" over and over again.

Below is the simulated waveform of the program before it was put on the FPGA board: 

![alt text](https://raw.githubusercontent.com/NathanRuprecht/ECE281_Lab5/master/waveform1.png "PRISM_Pic")

I know this simulation ran correctly for two reasons.  The first being the most obvious, it matched the simulation screenshot given to us in the lab prep.  Second being a bit more tedious, I went through and checked the output with what should appear for each input.  That took awhile but everything checked out right.  After that, I put it on my board and demod it to Capt. Trimble. 



##Part 2: PRISM Assembly Programming
This part took me quite awhile.  At first I tried to jump into it and program in PRISM and trying to 'wing it.'  This failed miserably.  I got lost real quick.  I thought I could program then make the flow chart.  Wrong.  I actually slowed down, and wrote out the flow chart like the instructions said.  The flowchart took about 10 minutes, then the actual PRISM code took maybe 5 minutes.  Super fast.  And it worked!  I clicked autoclock and just let it go.  0-99 then loop to do 0-99 again and again.  The problem came up when trying to implement this in VHDL...  Coding was rough and getting it on the board had many unknown errors.  Brian had code that should've worked, but didn't on his board.  When he used the same code but put it on my board, he came up with a different error compared to it on his board!!  Same code, should be identical boards, but different errors.  As much as I tried with VHDL, my FPGA did not end up showing the results as easily as in PRISM....



##PRISM Q&A

1.	When the controller’s current state is “FETCH,” what is the status of the following control lines:

a.	PCLd

b.	IRLd

c.	ACCLd


2.	The current state is Decode LoAddr and the IR contains “OUT.”  What are the control signals are asserted, and what will the next state be?




3.	What are the three status signals sent from the PRISM datapath to the PRISM controller?




4.	Why is it important that ACCLd signal be active during the execute state for the ADDI instruction?




5.	What changes are necessary to the PRISM datapath to add another instruction (SUBI, which would subtract an immediate value from the accumulator) to the instruction set?








