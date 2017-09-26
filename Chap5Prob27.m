%Author: Brian Wilcox
%Date: 2/20/2017
%Class: EECE 5666
%Problem 5.27

%Part a and b
b = [1 -1];
a = [1 0.9];
figure(1)
zplane(b,a)
N = 200;
%Set k to 1 for base case
k = 1;
%Compute H(w) using freqz
[H,w] = freqz(b,a,N)
mag = abs(H);
phase = 180 /pi * angle(H);

figure(2)
plot(w,mag)
xlabel('w (radians)')
ylabel('Magnitude')
title('Problem 5.27 b Magnitude versus angular frequency')

figure(3)
plot(w,phase)
xlabel('w (radians)')
ylabel('Phase (degrees)')
title('Problem 5.27 b Phase versus angular frequency')