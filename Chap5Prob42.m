%Author: Brian Wilcox
%Date: 2/20/2017
%Class: EECE 5666
%Problem 5.42

%Part a
%set b0 = 1
b0 = 1;
%Set r = 0.9
r = 0.75;
%Set w0 = pi/4;
w0 = pi/4;
%Define b and a for the zplane plot
b = b0*[1 -(exp(1i*w0)+exp(1i*-w0)) 1];
a = [1 -r*(exp(1i*w0)+exp(1i*-w0)) r*r];
zplane(b,a)
title('Problem 5.42 a Zero-Pole plot')

%Part b
%set b0 = 1
b0 = 1;
%Set r = 0.99
r = 0.9;
%set w0 = 60 degrees = pi/3
w0 = pi/3;
%Define b and a for the zplane plot
b = b0*[1 -(exp(1i*w0)+exp(1i*-w0)) 1];
a = [1 -r*(exp(1i*w0)+exp(1i*-w0)) r*r];
[H,w] = freqz(b,a,500);
figure(2)
mag = abs(H);
plot(w,mag)
xlabel('w (radians)')
ylabel('abs(H(w))')
title('Problem 5.42 b Magnitude Response with w0 = 60 degrees and r = 1 plot')