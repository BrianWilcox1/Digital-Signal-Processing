%Author: Brian Wilcox
%Class: EECE 5666
%Date: 3/4/2017
%Problem 5.43 graphing

%Define b, a, and N
b = -0.325.*[1 -2*cos(6*pi/25) 1];
a = 1;
N = 500;

%Compute frequency response as well as magnitude and phase response
[H, w] = freqz(b,a,N);
phase = angle(H);
mag = abs(H);

figure(1);
plot(w,mag)
title('Magnitude of Filter in 5.43 versus angle')
xlabel('Angular Frequency in radians');
ylabel('Magnitude');

figure(2);
plot(w,phase)
title('Phase of Filter in 5.43 versus angle')
xlabel('Angular Frequency in radians');
ylabel('Phase in radians');
