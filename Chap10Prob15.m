%Author: Brian Wilcox
%Class: EECE 5666
%Date: 3/9/2017
%Problem 10.15 plotting

%Iteratively changed M until magnitude specifications were met

%Setup remez function
M = 19;
F = [0 1/6 1/4 0.5];
D = [1 1 0 0];
W = [1 5.75];
Fs = 1;
b = remez(M,2*F,D,W);
[H, omega] = freqz(b,1,300);
f = omega./(2*pi);
mag = 20*log10(abs(H));
phase = rad2deg(angle(H));

figure(1)
v =[0 0.5 -44 2]; 
plot(f, mag);
title('Magnitude Response of 10.15 Filter using remez')
xlabel('frequency (Hz)');
ylabel('Magnitude in dB');
axis(v)

figure(2)
plot(f, phase);
title('Phase Response of 10.15 Filter using remez')
xlabel('frequency (Hz)');
ylabel('Phase in degrees');
