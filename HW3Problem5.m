%Author: Brian Wilcox
%Class: EECE 5666
%Date: 1/19/2017
%Assignment: Homework #3, Problem #5

 %b(z) coefficients
 b =  [1 -0.5];
 %a(z) coefficients
 a = [1 0.5];
 %Returns the Response of the system
 [H,w]=freqz(b,a,100);
 %Returns the Magnitude 
 mag = abs(H);
 figure(1);
 plot(w,mag);
 xlabel('w (radians)');
 ylabel('abs(H(w))');
 title('Homework 3, Problem 5 Magnitude Response of H(w)');
 figure(2);
 %Returns the phase in degrees
 phase=180/pi*angle(H) ;
 plot(w,phase);
 xlabel('w in radians');
 ylabel('Phase(H(w)) in degrees');
 title('Homework 3, Problem 5 Phase Response of H(w)');