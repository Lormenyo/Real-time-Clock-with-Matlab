# PLOTTING AND ANIMATING AN ANALOG CLOCK IN MATLAB/OCTAVE

This project is all about using plotting an analog clock in MATLAB or octave using matrixes and some functions. This project was initiated as part of applied programming course assessment in freshman year.

# HOW TO RUN THE CODE
The code can be run in either MATLAB [Download here](https://www.mathworks.com/downloads/) or octave [Download here](https://www.gnu.org/software/octave/download.html). The output below was obtained after running in MATLAB. 
![Analog clock and calendar](https://github.com/Lormenyo/Clock/blob/master/Screenshot%20(11).png "Analog clock and calendar")

# HOW THE CODE WORKS
 
getCircle.m file contains a function that takes two inputs; the center of the circle to be plotted and the radius that circle.  A vector t containing angles from zero to 2pi radians is defined. The angles in the vector t is used to generate the x and y coordinates for the circle. 
 
Using a center (0, 0) and radius 4 as input arguments for the getCircle function which is being used in the clockp.m file, the circle is plotted using the plot function in MATLAB. 
  
The “hold on” statement enables MATLAB or octave to plot other things on the plot window that has been used to plot the circle. So, it basically says “Hold on, I have other things to plot on this window”.
Using the clock function, the current date and time is obtained and assigned the variable “current_time”. The current date and time returned by the clock function is represented as a vector with the year, month, day, hour, minutes and seconds as below:  
The fix function converts the above decimals into integers so that the current_date vector would have integers like below:
  
By indexing the current_time vector, the current year, month, day, hour, minutes and seconds are assigned to their corresponding variables. To ensure that the 24 -hour format is disabled in this program, 12 hours is always subtracted from the hours when it exceeds 12.
 
The second hand and minutes hand are plotted on the same plot window. The second hand and the minute hand turn through an angle of pi/30 radians every second and minute respectively. The second hand was assigned a length of 3.5, whilst the minute hand is assigned a length of 3.3.  The hour hand unlike the other hands of the clock, turns as the minute hand turns. 
 
Since the numbers on the clock are position at angles of pi/6 radians along the circular clock, a vector “ang” with angles starting from pi/6 and ending at 2p, with a step angle of pi/6 is created. This vector is used to generate the vectors a and b which contains coordinates for the positioning of the numbers along the circle.
 
The calendar function returns the calendar of the current month as a 7 x 7 matrix. Using the subplot function which divides the plot window into subplots, the calendar is also plotted using the text function.
 
To make the clock come alive, a for loop was used. The range was from 1 to 100000 seconds. The second hand rotates every second whilst the minute and the hour rotates every 60 seconds.


 

# FEATURES
This project has an analog clock that gives the current time and date. It has a ticking sound that accompanies every ticking second. There is also an animation at the center of the analog clock that adds to its aesthetics. In addition to all this is a calendar that displays the days in the current month in a colored background. The current day of the month is highlighted with a different color: red.

# HOW TO USE THIS CLOCK
This project can be used in schools to teach them how to tell the time and how clocks work.  It can also be used as a personal clock on desktops. 
This project can also be a good challenge to students who want to learn more about matrices and plotting in MATLAB.

# CREDITS
- Ted Asare (@tedasare)
- Jeanne Roberts
