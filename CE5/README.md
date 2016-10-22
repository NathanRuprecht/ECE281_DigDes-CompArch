ECE281_CE5
==========

##Task 1
Task 1 was simple enough.  We showed that we understood how MIPS worked and could write the code to do some function.  In this case, we assigned 44 to $S0, -37 to $S1, and the addition of those two registers (7) to $S2.  We then stored that result to the hexidecimal address, 0x54.  After that we converted the MIPS code to hex which is used in Task 2.

Below is the code that satisfies Task #1.  The text file is in the CE5 repository.

![alt text](https://raw.githubusercontent.com/NathanRuprecht/ECE281_CE5/master/Task_1_text.png "MIPS Code")


##Task 2
The VHDL files are in the repository that execute to satisfy Task 1.  Task 2 stores the number 44 in register $S0 which is register 16 that is shown in the simulation.  It stores -37 is $S1 which is 17.  It adds the two registers together for the result of 7 which is stored in register $S2 (18 shown in simulation).

Below is a screenshot of the Xilinx simulation implementing the above mips program: 

![alt text](https://raw.githubusercontent.com/NathanRuprecht/ECE281_CE5/master/Task_1.png "Task_1")

##Task 3
Task 3 was taking the schematic given to us and changing it so that an ori function was involved.  WHat we had to do was add a zero extension function that went through a mux with the sign extender.  The output of that was then the input of the mux going into the ALU.  The concept wasn't difficult but there was a bunch of tedious changes that had to happen in order to get it functioning correctly.

Below is the simulation for Task 3.  Register 19 has the result ending in 8007.  That's the hexidecimal result.

![alt text](https://raw.githubusercontent.com/NathanRuprecht/ECE281_CE5/master/Task_3.png "Task_3")
