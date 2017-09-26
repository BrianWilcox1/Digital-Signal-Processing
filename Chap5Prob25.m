%Author: Brian Wilcox
%Date: 2/20/2017
%Class: EECE 5666
%Problem 5.25

%Part a
w = 0:0.001:3.4;
H = ( (exp(1i*w)-exp(1i*pi/4)).*(exp(1i*w)-exp(1i*-pi/4)))./(exp(1i*2*w));
mag = abs(H);
plot(w,mag)
xlabel('w (radians)');
ylabel('abs(H(w))');
title('Problem 5.25 a Plot of magnitude of H(w) versus w')

clear; clc;
%Part b
w = 0:0.001:3.4;
H = ( exp(1i*2*w))./((exp(1i*w)-0.9*exp(1i*pi/4)).*(exp(1i*w)-0.9*exp(1i*-pi/4)));
mag = abs(H);
figure(2);
plot(w,mag)
xlabel('w (radians)');
ylabel('abs(H(w))');
title('Problem 5.25 b Plot of magnitude of H(w) versus w')

clear;clc;
%Part c
w = 0:0.001:3.4;
a = ( (exp(1i*w)-0.9*exp(1i*pi/4)).*(exp(1i*w)-0.9*exp(1i*-pi/4)).*...
    (exp(1i*w)-0.9*exp(1i*2*pi/4)).*(exp(1i*w)-0.9*exp(1i*-2*pi/4)));
b = ( (exp(1i*w)-0.9*-1).*(exp(1i*w)-0.9).*...
    (exp(1i*w)-0.9*exp(1i*3*pi/4)).*(exp(1i*w)-0.9*exp(1i*-3*pi/4)));
H = ( a.*b)./(exp(1i*8*w));
mag = abs(H);
figure(3);
plot(w,mag)
xlabel('w (radians)');
ylabel('abs(H(w))');
title('Problem 5.25 c Plot of magnitude of H(w) versus w')

clear;clc;
%Part d
w = 0:0.001:3.4;
H = (exp(1i*2*w)-1)./(exp(1i*2*w)+0.81);
mag = abs(H);
figure(4);
plot(w,mag)
xlabel('w (radians)');
ylabel('abs(H(w))');
title('Problem 5.25 d Plot of magnitude of H(w) versus w')
