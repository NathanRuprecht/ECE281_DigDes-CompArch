ECE281_CE3
==========

#Analysis
  Comparing my Moore results to the example results in the handout, they're are very similar.  My Mealy results are the same as my Moore results.  The fact that they're very similar gave me hope that they're correct.  I went through the requirements and made sure they matched with the results.  In both the Moore and Mealy machines, the elevator started at the 1st floor.  It spend at least 2 clock cycles at each floor going up to the 4th floor.  They then went straight to the 1st floor without stopping.  The results of each machine matched all the specified requirements so I was confident they would be considered correct.
  
#####What is the clock frequency?
In the example given (and in my code), the clock period is defined to be 10 ns.  That's just how long it is turned on, then turned off.  The cycle time (time between rising edge to rising edge) is then 20 ns.  Clock frequency is 1/Tc (Tc being cycle time), so 1/20ns.  The clock frequency is 50MHz.
    
#####What value would we set to simulate a 50MHz clock?
Seeing that we found the answer in the previous question, I know the answer is 10ns.  If we wanted to do the math, the value would be set to 1/f (f being frequency), so 1/50MHz.  The clock cycle would be 20ns.  The value used in the code for the clk_period would be 10ns.
  
#####Question: is reset synchronous or asynchronous?
It is asynchornous.  If the system only changes at the clock edge, then we say the state is synchronized to the clock(synchronous).  Reset does NOT depend on where the clock is.  If reset is 1, then the elevator will return to floor1.  No if, ands, or buts.

#####Question: Will it be different from your Moore Machine?
No.  I used the same code for my Mealy Machine as I did with my Moore Machine.  The outputs were different, but the next-state process was the same.


#####Moore Results:
![alt text](https://raw.github.com/NathanRuprecht/ECE281_CE3/master/waveform.png "Moore Waveform")

####Mealy Results:
![alt text](https://raw.github.com/NathanRuprecht/ECE281_CE3/master/mealy_waveform.png "Mealy Waveform")
