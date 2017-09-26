%Author: Brian Wilcox
%Date: 1/3/2017
%Class: EECE 5666
%Problem: Homework 1 #5

%Define the domain of n
n = 0:1:25;

%Problem a 
%Equation is x(n) = delta(n-2) -3 * delta(n-3);
%kroneckerDelta uses syms as inputs. 
syms d1 d2;
x1 = zeros(1, length(n) );
%Establishes a delta condition for n = 2 and n = 3
d1 = sym(n-2);
d2 = sym(n-3);
%This function returns 1 for an input of zero and 0 otherwise.
x1 = 1 * kroneckerDelta(d1) - 3 * kroneckerDelta(d2);
figure(1);
stem(n, x1);
title('Homework 1, Problem 5, Part a');
xlabel('Current n value');
ylabel('x(n)');
hold on;

%Problem b
%Equation is x(n) = cos(0.2*pi*n);
x2 = cos(0.2*pi*n);
figure(2);
stem(n, x2);
title('Homework 1, Problem 5, Part b');
xlabel('Current n value');
ylabel('x(n)');
hold on;

%Problem c
%x[n] = exp(-0.1 + j * 0.4 * pi * n);
%Set the inputs for the exponents
complexVals = -0.1 + 1i * 0.4 * pi * n;
%calculates the expotential values
x3=exp(complexVals);
%Take the Real and Imaginary components sepearateley
x3Real = real(x3);
x3Imag = imag(x3);
figure(3);
stem(n, x3Real);
title('Homework 1, Problem 5, Part c Real');
xlabel('Current n value');
ylabel('x(n)');
hold on;
figure(4);
stem(n, x3Imag);
title('Homework 1, Problem 5, Part c Imaginary');
xlabel('Current n value');
ylabel('x(n)');
hold on;

%Problem d
%x[n] = n*(u(n) - u(n-10));
%inline allows for making a custom boolean unit step function.
u = inline( 't >= 0' );
%Calculates the equation
x4 = n.*(u(n) - u(n-10) );
figure(5);
stem(n, x4);
title('Homework 1, Problem 5, Part d');
xlabel('Current n value');
ylabel('x(n)');
hold on;
