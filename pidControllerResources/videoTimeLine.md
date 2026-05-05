Overview Video



<start with graphic of PID Controller Board>



**Introduction**

For the past 10 years I've been teaching a Feedback and Control of Dynamic

Systems class at the Colorado School of Mines.  This class covers a wide variety 

of concepts and links them together.  What the class lacks is a way of creating 

a hands-on understanding of the concepts presented in class.



\*Hello, my name is Christopher Coulston and I'd like to introduce you to the 

the analog PID Controller created to address this problem.



**What is a Feedback Controller?**

In order to build a feedback controller you need something that you want to control.

We call this the plant.



<add evolving graphic, plant, ref input, error, controller>



You need to provide the feedback controller the value that you want the output to have.  This is

called the reference input.



The feedback controller computes the difference of the reference input and the plant output. This

is called the error of the system.



The error, its integral and derivative are added together creating the control signal. 

This control signal is sent as input to the plant.



The PID Controller board allows measurement of these values at a set of headers along the 

top of the board.



**Goals of the Feedback Controller**

When I started this project I had the following goals:

Physically Robust:  Students are hard on equipment and any mechanical interface is bound to break.

Inexpensive:

Made from discrete components:  I wanted student to see how simple electronic building blocks

can be assembled to form complex functionality.

Use jelly bean parts: You should be able to source the parts from many different vendors.

Flexible: Should allow users to test a variety of concepts presented in a from feedback control course.

Open Source: Please copy and adapt this work to your needs.



**The Analog PID Controller**

Let's look at the analog PID Controller.

<add graphic showing PID Controller PCB>



The headers at the top of the board provide access to all the signals in a feedback controller.



The reference input to the PID Controller comes from one of three sources:

* A push button
* A potentiometer
* An external function generator

You select the reference source by moving this jumper.



You can observe the output of the PID Controller using an oscilloscope.



The behavior of the PID Controller is determined by the PID gains, set by the three 

potentiometers.





**Using the Analog PID Controller**

Let's setup the analog PID Controller board.  This will require

* Split power supply.  A pair of 9V battery's will work fine.
* A 2-channel oscilloscope
* Optional function generator



Set up the power supply, +9V, GND and -9V

Configure and connect the function generator

Attach the output to the oscilloscope



Start tuning...





















