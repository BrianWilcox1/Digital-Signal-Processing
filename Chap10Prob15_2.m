%Author: Brian Wilcox
%Class: EECE 5666
%Date: 3/19/2017
%Problem 10.15 plotting for Butterworth and Chebyshev


%Setup butterworth function
FSample = 24000;
fp = 4000/FSample;
fs = 6000/FSample;
R = 1;
A = 40;
[M, fc, fcl, fch] = ordb(fp, fs, R, A);
[b, a] = butter(M, 2*fc);
[H, omega] = freqz(b,a,300);
f = omega./(2*pi);
mag = 20*log10(abs(H));
phase = rad2deg(angle(H));

figure(1)
v =[0 0.5 -44 2]; 
plot(f, mag);
title('Magnitude Response of 10.15 Filter using butterworth')
xlabel('frequency (Hz)');
ylabel('Magnitude in dB');
axis(v)

figure(2)
plot(f, phase);
title('Phase Response of 10.15 Filter using')
xlabel('frequency (Hz)');
ylabel('Phase in degrees');

M = ordc(fp,fs, R, A);
[b, a] = cheby1(M, R, 2*fp);
[H, omega] = freqz(b,a,300);
f = omega./(2*pi);
mag = 20*log10(abs(H));
phase = rad2deg(angle(H));

figure(3)
v =[0 0.5 -44 2]; 
plot(f, mag);
title('Magnitude Response of 10.15 Filter using Chebyshev type-1')
xlabel('frequency (Hz)');
ylabel('Magnitude in dB');
axis(v)

figure(4)
plot(f, phase);
title('Phase Response of 10.15 Filter using Chebyshev type-1')
xlabel('frequency (Hz)');
ylabel('Phase in degrees');
