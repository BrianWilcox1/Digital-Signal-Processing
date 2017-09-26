%Author: Brian Wilcox
%Class: EECE 5666
%Date: 1/31/2017
%Homework #5 Problem 5
%Part a 
%Define the time region
L = 50;
%Define Sample Frequency
FS = 100;
%Define time region
n = 0:1:L-1;
%Compute the Sampled signal from the aliased signal
x = sin(4*pi/FS.*n) + 2*cos(8*pi/FS.*n);
%Take the subset of values for part c and part d
x_cd = x(1:40);

%Part a
%Compute the Fourier Transform
Xa = fft(x, L);
%Define the k value region for the DFT
ka = 0:1:25;
figure(1);
stem(ka,1/L*abs(Xa(1:L/2+1)))
xlabel('k');
ylabel('Magnitude of X_a(k)');
title('Homework 5 Part 5 Plot for Magnitude of X_a(k) with L = 50, N = 50');

%Part b
%Compute the Fourier Transform
Xb = fft(x, 256);
%Define the k value region for the DFT
kb = 0:1:128;
figure(2);
stem(kb,1/L*abs(Xb(1:129)))
xlabel('k');
ylabel('Magnitude of X_b(k)');
title('Homework 5 Part 5 Plot for Magnitude of X_b(k) with L = 50, N = 256');

%Part c
%Compute the Fourier Transform
Xc = fft(x_cd, 40);
%Define the k value region for the DFT
kc = 0:1:20;
figure(3);
stem(kc,1/L*abs(Xc(1:21)))
xlabel('k');
ylabel('Magnitude of X_c(k)');
title('Homework 5 Part 5 Plot for Magnitude of X_c(k) with L = 40, N = 40');

%Part d
%Compute the Fourier Transform
Xd = fft(x_cd, 256);
%Define the k value region for the DFT
kd = 0:1:128;
figure(4);
stem(kd,1/L*abs(Xd(1:129)))
xlabel('k');
ylabel('Magnitude of X_d(k)');
title('Homework 5 Part 5 Plot for Magnitude of X_d(k) with L = 40, N = 256');