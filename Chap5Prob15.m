%Author: Brian Wilcox
%Class: EECE 5666
%Date: 1/19/2017
%Assignment: Problem 5.15

clear; clc;
%Define the discrete time range
n = 0:1:100;
%Part 1
%Define the discrete time range
n = 0:1:100;
%define the b(z) coefficients
b = [0 0.1];
%define the a(z) coefficients
a = [1 -0.9 1 -0.9];
%Compute for the impulse input
delta = [1 zeros(1,100)];
%This will compute y(n) by appl
figure(1);

%Solve by Product of H(z) and X(z)
y1 =filter(b,a,delta);
stem(n,y1)
xlabel('n');
ylabel('y1(n)');
title('5.15 Plot for Y1(n) from multiplying H(z) and X(z)');

%h(n)
h = 0.1*(0.9).^n ;
%
x = sin(pi/2.*n);
figure(2);
%Solve by Convolution of h(n) and x(n)
y2=filter(h,1,x);
stem(n,y2)
xlabel('n');
ylabel('y1(n)');
title('5.15 Plot for Y1(n) from convolving h(n) and x(n)');

%Part 2
%Define the discrete time range
n = 0:1:100;
%define the b(z) coefficients
b2 = [0 0.0951];
%define the a(z) coefficients
a2 = [1 -1.518 1.556 -0.9];
%Compute for the impulse input
delta = [1 zeros(1,100)];
figure(3);

%Solve by Product of H(z) and X(z)
y3 =filter(b2,a2,delta);
stem(n,y3)
xlabel('n');
ylabel('y2(n)');
title('5.15 Plot for Y2(n) from multiplying H(z) and X(z)');

%h(n)
h2 = 0.1*(0.9).^n ;
%
x2 = sin(2*pi/5.*n);
figure(4);
%Solve by Convolution of h(n) and x(n)
y4=filter(h2,1,x2);
stem(n,y4)
xlabel('n');
ylabel('y2(n)');
title('5.15 Plot for Y2(n) from convolving h(n) and x(n)');

%Part 3
%Define the discrete time range
n = 0:1:100;
%define the b(z) coefficients
b3 = [0 0.0588];
%define the a(z) coefficients
a3 = [1 -2.518 2.456 -0.9];
%Compute for the impulse input
delta = [1 zeros(1,100)];
figure(5);

%Solve by Product of H(z) and X(z)
y5 =filter(b3,a3,delta);
stem(n,y5)
xlabel('n');
ylabel('y3(n)');
title('5.15 Plot for Y3(n) from multiplying H(z) and X(z)');

%h(n)
h3 = 0.1*(0.9).^n ;
%
x3 = sin(pi/5.*n);
figure(6);
%Solve by Convolution of h(n) and x(n)
y6=filter(h3,1,x3);
stem(n,y6)
xlabel('n');
ylabel('y3(n)');
title('5.15 Plot for Y3(n) from convolving h(n) and x(n)');

%Part 4
%Define the discrete time range
n = 0:1:100;
%define the b(z) coefficients
b4 = [0 0.0309];
%define the a(z) coefficients
a4 = [1 -2.802 2.712 -0.9];
%Compute for the impulse input
delta = [1 zeros(1,100)];
figure(7);

%Solve by Product of H(z) and X(z)
y7 =filter(b4,a4,delta);
stem(n,y7)
xlabel('n');
ylabel('y4(n)');
title('5.15 Plot for Y4(n) from multiplying H(z) and X(z)');

%h(n)
h4 = 0.1*(0.9).^n ;
%
x4 = sin(pi/10.*n);
figure(8);
%Solve by Convolution of h(n) and x(n)
y8=filter(h4,1,x4);
stem(n,y8)
xlabel('n');
ylabel('y4(n)');
title('5.15 Plot for Y4(n) from convolving h(n) and x(n)');


%Part b
 b =  0.1;
 a = [1 -0.9];
 [H,w]=freqz(b,a,100);
 mag = abs(H);
 figure(9);
 plot(w,mag);
 xlabel('w (radians)');
 ylabel('abs(H(w))');
 title('5.15 b Plot of Magnitude of H(w)');
 figure(10);
 phase=angle(H) ;
 plot(w,phase);
 xlabel('w in radians');
 ylabel('Phase(H(w)) in radians');
 title('5.15 b Plot of Phase of H(w)');