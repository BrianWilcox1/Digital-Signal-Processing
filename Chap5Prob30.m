%Author: Brian Wilcox
%Date: 2/20/2017
%Class: EECE 5666
%Problem 5.30

%Define b and a
b = [1/4 1/2 1/4];
a = 1;
N = 500;
%Compute frequency response
[H, w] = freqz(b,a, N);
%Gives raw magnitude response
mag = abs(H);
%Gives phase response in angles
phase = 180/pi * angle(H);

figure(1)
plot(w,mag)
xlabel('w (radians)');
ylabel('abs(H(w))');
title('Problem 5.30  Plot of magnitude of H(w) versus w')

figure(2)
plot(w,phase);
xlabel('w (radians)');
ylabel('Phase of H(w) (degrees)');
title('Problem 5.30  Plot of Phase of H(w) versus w')

