%Author: Brian Wilcox
%Class: EECE 5666
%Date: 1/9/2017
%Problem: Verify 3.36b

n = 0:1:20;
%set x(n) to the impulse delta(n)


%Define the delta function
u = inline( 't>=0' );
%Establishes a delta condition for n = 0
syms d;
d = sym(n);
%set h(n) to the result from 3.36b
y1 = 10 * single(kroneckerDelta(d)) + 5*(1/2).^n .*u(n) - 14*(1/5).^n .*u(n);

%a = 1
a = 1;

figure(1);
stem(n,y1);
title('Homework 2, Problem 3.36, Verification Impulse');
xlabel('Current n value');
ylabel('y(n)');
hold on;

%Input the a and b coefficients
a = [1 -0.7 0.1];
b = [1 -1 1];
x = [1 zeros(1,20)];
y2 = filter(b,a,x);
figure(2);
stem(n,y2);
title('Homework 2, Problem 3.36, Verification Transfer');
xlabel('Current n value');
ylabel('y(n)');
