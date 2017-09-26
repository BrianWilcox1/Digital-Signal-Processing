%Author: Brian Wilcox
%Class: EECE 5666
%Date: 3/19/2017
%Problem 10.17 plotting for Butterworth and Chebyshev


%Setup Chebyshev-Type1 function
fp = 0.3*pi/(2*pi);
fs = 0.35*pi/(2*pi);
R = 1;
A = 60;

M = ordc(fp,fs, R, A);
[b, a] = cheby1(M, R, 2*fp);
[H, omega] = freqz(b,a,300);
f = omega./(2*pi);
mag = 20*log10(abs(H));
phase = rad2deg(angle(H));

figure(1)
v =[0 0.5 -80 2]; 
plot(f, mag);
title('Magnitude Response of 10.17 Filter using Chebyshev-Type1')
xlabel('frequency (Hz)');
ylabel('Magnitude in dB');
axis(v)

figure(2)
plot(f, phase);
title('Phase Response of 10.15 Filter using Chebyshev-Type1')
xlabel('frequency (Hz)');
ylabel('Phase in degrees');

M = orde(fp,fs, R, A);
[b, a] = ellip(M, R, A, 2*fp);
[H, omega] = freqz(b,a,300);
f = omega./(2*pi);
mag = 20*log10(abs(H));
phase = rad2deg(angle(H));

figure(3)
v =[0 0.5 -80 2]; 
plot(f, mag);
title('Magnitude Response of 10.17 Filter using Ellipoid')
xlabel('frequency (Hz)');
ylabel('Magnitude in dB');
axis(v)

figure(4)
plot(f, phase);
title('Phase Response of 10.15 Filter using Ellipoid')
xlabel('frequency (Hz)');
ylabel('Phase in degrees');
