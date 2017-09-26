%Author: Brian Wilcox
%Class: EECE 5666
%Date: 3/8/2017
%Problem 10.1 plotting

%Part b
%set parameters for remez function
F = [1/12];
M = 25;
b = fir1(M-1,2*F,'low',rectwin(M));
[H, w] = freqz(b,1,200);
f = w./(2*pi);
mag = 20*log10(abs(H));
phase = 180/pi.*angle(H);

figure(1)
plot(f, mag)
title ('Magnitude in dB of 10.2 FIR Filter with Rectangular Window');
xlabel('frequency (Hz)');
ylabel('Magnitude (dB)');
figure(2)
plot(f, phase)
title ('Phase in Degrees of 10.2 FIR Filter with Rectangular Window');
xlabel('frequency (Hz)');
ylabel('Phase (Degrees)');

%Part c
%set parameters for remez function
F = [1/12];
M = 25;
b = fir1(M-1,2*F,'low',hamming(M));
[H, w] = freqz(b,1,200);
f = w./(2*pi);
mag = 20*log10(abs(H));
phase = 180/pi.*angle(H);

figure(3)
plot(f, mag)
title ('Magnitude in dB of 10.2 FIR Filter with Hamming Window');
xlabel('frequency (Hz)');
ylabel('Magnitude (dB)');
figure(4)
plot(f, phase)
title ('Phase in Degrees of 10.2 FIR Filter with Hamming Window');
xlabel('frequency (Hz)');
ylabel('Phase (Degrees)');

%Part d
%set parameters for remez function
F = [1/12];
M = 25;
b = fir1(M-1,2*F,'low',bartlett(M));
[H, w] = freqz(b,1,200);
f = w./(2*pi);
mag = 20*log10(abs(H));
phase = 180/pi.*angle(H);

figure(5)
plot(f, mag)
title ('Magnitude in dB of 10.2 FIR Filter with Bartlett Window');
xlabel('frequency (Hz)');
ylabel('Magnitude (dB)');
figure(6)
plot(f, phase)
title ('Phase in Degrees of 10.2 FIR Filter with Bartlett Window');
xlabel('frequency (Hz)');
ylabel('Phase (Degrees)');
