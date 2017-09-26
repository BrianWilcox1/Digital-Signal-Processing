%Author: Brian Wilcox
%Class: EECE 5666
%Date: 3/4/2017
%Problem 5.81 graphing

%Part a
%Define b, a, and N
b = [1 0 0 0];
a = [1 -2.30351 1.84281 -0.512]; 
N = 10000;

%Compute frequency response as well as magnitude and phase response
[H, w] = freqz(b,a,N);
phase = angle(H);
mag = abs(H);

b = [1 3 3 1];
a = [1 -2.59145 2.3323 -0.729]; 
N = 10000;

%Compute frequency response as well as magnitude and phase response
[H, w] = freqz(b,a,N);
figure(1);
plot(w,mag)
title('Magnitude of Filter in 5.81 part a versus angle')
xlabel('Angular Frequency in radians');
ylabel('Magnitude');

figure(2);
plot(w,phase)
title('Phase of Filter in 5.81 part a versus angle')
xlabel('Angular Frequency in radians');
ylabel('Phase in radians');


%Part b
%Define b, a, and N
phase = angle(H);
mag = abs(H);

figure(3);
plot(w,mag)
title('Magnitude of Filter in 5.81 part b versus angle')
xlabel('Angular Frequency in radians');
ylabel('Magnitude');
figure(4);
plot(w,phase)
title('Phase of Filter in 5.81 part b versus angle')
xlabel('Angular Frequency in radians');
ylabel('Phase in radians');

%For the sake of experimentation, I set r = 0.95
%Define b, a, and N
b = [1 3 3 1];
a = [1 -2.73542 2.59865 -0.857375]; 
N = 10000;

%Compute frequency response as well as magnitude and phase response
[H, w] = freqz(b,a,N);
scale = max(abs(H));
phase = angle(H);
mag = abs(H)./scale;

figure(5);
plot(w,mag)
title('Magnitude of Filter in 5.81 Experiment with r = 0.95 versus angle')
xlabel('Angular Frequency in radians');
ylabel('Magnitude');
figure(6);
plot(w,phase)
title('Phase of Filter in 5.81 Experiment with r = 0.95 versus angle')
xlabel('Angular Frequency in radians');
ylabel('Phase in radians');
