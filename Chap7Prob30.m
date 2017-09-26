%Author: Brian Wilcox
%Class: EECE 5666
%Date: 1/31/2017
%Homework #5 Problem 7.30
%Part a 
%Define the time region
n = 0:1:255;
%Define the frequencies for the signals
f1 = 1/18;
f2 = 5/128;
fc= 50/128;
%Define x(n)
x = cos(2*pi*f1.*n)+cos(2*pi*f2.*n);
%Define xc(n)
xc = cos(2*pi*fc.*n);
%Compute xam 
xam = x.*xc;
figure(1);
stem(n,x)
xlabel('n');
ylabel('x(n)');
title('7.30 part a x(n)');
figure(2);
stem(n,xc)
xlabel('n');
ylabel('xc(n)');
title('7.30 part a xc(n)');
figure(3);
stem(n,xam)
xlabel('n');
ylabel('xam(n)');
title('7.30 part a xam(n)');

%Part b 
%Define the time region
n = 0:1:127;
xam_b = xam(n+1);
Xam_b = fft(xam_b);
figure(4)
stem(n,abs(Xam_b))
xlabel('k');
ylabel('abs(Xam_b(k))');
title('7.30 part b abs(Xam_b(k))');

%Part c 
%Define the time region
xam_c = xam(1:1:100);
n = 0:1:127;
Xam_c = fft(xam_c,128);
figure(5)
stem(n,abs(Xam_c))
xlabel('k');
ylabel('abs(Xam_c(k))');
title('7.30 part c abs(Xam_c(k))');

%Part d 
%Define the time region
xam_d = xam(1:180);
n = 0:1:255;
Xam_d = fft(xam_d,256);
figure(6)
plot(n,abs(Xam_d))
xlabel('k');
ylabel('abs(Xam_d(k))');
title('7.30 part d abs(Xam_d(k))');
