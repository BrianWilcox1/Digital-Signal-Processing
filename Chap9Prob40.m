%Author: Brian Wilcox
% EECE 5666
% 3/27/2017
% Problem 9.40 part c + d.

%Direct Form II
n = 0:1:99;
b = 2.349.*[1 -1.506 0.908 -0.0632 -0.1];
a = [1 -0.9667 0.6067 0.02667 -0.1067];
x1 = [1 zeros(1,99)];
x2 = ones(1,100);
y1 = filter(b,a,x1);
y2 = filter(b,a,x2);
mag1 = abs(y1);
mag2 = abs(y2);

figure(1);
plot(n, mag1)
title('Impulse Response of Direct Form II')
xlabel('n')
ylabel('Magnitude of Impulse Response')

figure(2);
plot(n, mag2)
title('Step Response of Direct Form II')
xlabel('n')
ylabel('Magnitude of Step Response')

%Cascade Form
n = 0:1:99;
b1 = 2.349.*[1 -0.8*exp(1i*pi/4)];
a1 = [1 -1/2];
b2 = [1 -0.8*exp(1i*-pi/4)];
a2 = [1 1/3];
b3 = [1 1/4];
a3 = [1 -0.8*exp(1i*pi/3)];
b4 = [1 -5/8];
a4 = [1 -0.8*exp(1i*-pi/3)];

x1 = [1 zeros(1,99)];
x2 = ones(1,100);

%4 Cascades for Impulse Response
h1 = filter(b1,a1, x1);
h2 = filter(b2,a2, h1);
h3 = filter(b3,a3, h2);
y3 = filter(b4,a4, h3);

%4 Cascades for Step Response
h1 = filter(b1,a1, x2);
h2 = filter(b2,a2, h1);
h3 = filter(b3,a3, h2);
y4 = filter(b4,a4, h3);

mag3 = abs(y3);
mag4 = abs(y4);

figure(3);
plot(n, mag3)
title('Impulse Response of Cascade Form')
xlabel('n')
ylabel('Magnitude of Impulse Response')

figure(4);
plot(n, mag4)
title('Step Response of Cascade Form')
xlabel('n')
ylabel('Magnitude of Step Response')

%Parallel Form 
n = 0:1:99;

b = 2.349.*[1 -1.506 0.908 -0.0632 -0.1];
a = [1 -0.9667 0.6067 0.02667 -0.1067];
[R,P,G] = residuez(b,a);
b1 = [R(1) 0];
a1 = [1 -P(1)];
b2 = [R(2) 0];
a2 = [1 -P(2)];
b3 = [R(3) 0];
a3 = [1 -P(3)];
b4 = [R(4) 0];
a4 = [1 -P(4)];

x1 = [1 zeros(1,99)];
x2 = ones(1,100);

y5 = filter(b1,a1,x1)+ filter(b2,a2,x1)+ filter(b3,a3,x1) + filter(b4,a4,x1)+ G;
y6 = filter(b1,a1,x2)+ filter(b2,a2,x2)+ filter(b3,a3,x2) + filter(b4,a4,x2)+ G;

mag5 = abs(y5);
mag6 = abs(y6);

figure(5);
plot(n, mag5)
title('Impulse Response of Parallel Form')
xlabel('n')
ylabel('Magnitude of Impulse Response')

figure(6);
plot(n, mag6)
title('Step Response of Parallel Form')
xlabel('n')
ylabel('Magnitude of Step Response')

